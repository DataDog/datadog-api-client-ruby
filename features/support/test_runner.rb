require 'json'
require 'net/http'
require 'uri'

require_relative 'templating'

module TestRunnerWorld
  def test_runner_enabled?
    !ENV['DD_TEST_RUNNER_DATA'].nil?
  end

  def test_server_enabled?
    !ENV['DD_TEST_SERVER_URL'].nil?
  end

  def test_runner_plan
    return @test_runner_plan if @test_runner_plan

    root = File.expand_path(ENV.fetch('DD_TEST_RUNNER_DATA'))
    manifest = JSON.parse(File.read(File.join(root, 'manifest.json')))
    item = manifest.fetch('scenarios').find do |candidate|
      candidate['version'] == "v#{@api_version}" &&
        candidate['feature'] == test_feature_name &&
        candidate['scenario'] == @scenario.name
    end
    raise "Generated request plan not found for v#{@api_version}/#{test_feature_name}/#{@scenario.name}" unless item

    @test_runner_plan = JSON.parse(File.read(File.join(root, item.fetch('file'))))
  end

  def prepare_test_runner_request
    plan = test_runner_plan
    @operation_id = plan.fetch('operation_id')
    @api_method = @api_instance.method("#{@operation_id.snakecase}_with_http_info".to_sym)
    request = plan.fetch('request')

    if request['body']
      value = materialize_test_value(request['body'].fetch('value'))
      value = JSON.parse(JSON.generate(value), :symbolize_names => true)
      opts[:body] = model_builder('body', value, request['body']['schema'])
    end

    request.fetch('parameters').each do |parameter|
      source = parameter.fetch('source')
      value = if source.fetch('type') == 'fixture'
        fixtures.lookup(source.fetch('path'))
      else
        materialize_test_value(source.fetch('value'))
      end
      name = parameter.fetch('name')
      opts[name.to_parameter.to_sym] = model_builder(name.to_parameter, value, parameter['schema'])
    end
  end

  def materialize_test_value(value)
    if value.is_a?(Hash) && value.keys == ['$openapi_transformer_template']
      return JSON.parse(value.fetch('$openapi_transformer_template').templated(fixtures))
    end
    if value.is_a?(Hash)
      return value.transform_values { |item| materialize_test_value(item) }
    end
    if value.is_a?(Array)
      return value.map { |item| materialize_test_value(item) }
    end
    return value.templated(fixtures) if value.is_a?(String)

    value
  end

  def test_runner_model(schema)
    if schema && schema['type'] == 'array'
      return "Array<#{test_runner_model(schema.fetch('items'))}>"
    end
    return schema['ref'] if schema && schema['ref']

    case schema && schema['type']
    when 'string'
      return 'Date' if schema['format'] == 'date'
      return 'Time' if schema['format'] == 'date-time'
      'String'
    when 'integer'
      'Integer'
    when 'number'
      'Float'
    when 'boolean'
      'Boolean'
    when 'object'
      'Object'
    else
      'Object'
    end
  end

  def start_test_server_session
    response = test_server_request(
      :post,
      '/__openapi_transformer__/sessions',
      {
        version: "v#{@api_version}",
        feature: test_feature_name,
        scenario: @scenario.name,
      }
    )
    @test_server_session = response.fetch('session')
    Time.parse(response.fetch('frozen_at'))
  end

  def stop_test_server_session
    return unless @test_server_session

    test_server_request(:post, "/__openapi_transformer__/sessions/#{@test_server_session}/stop")
  ensure
    @test_server_session = nil
  end

  def add_test_server_session(client)
    if @test_server_session
      client.default_headers['x-openapi-test-session'] = @test_server_session
    end
    client
  end

  def test_feature_name
    @test_feature_name ||= File.foreach(@scenario.location.file) do |line|
      match = line.match(/^\s*Feature:\s*(.+?)\s*$/)
      break match[1] if match
    end
  end

  def test_server_request(method, path, payload = nil)
    uri = URI.join(ENV.fetch('DD_TEST_SERVER_URL') + '/', path.delete_prefix('/'))
    request_class = method == :post ? Net::HTTP::Post : Net::HTTP::Get
    request = request_class.new(uri)
    if payload
      request['content-type'] = 'application/json'
      request.body = JSON.generate(payload)
    end
    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
    end
    unless response.is_a?(Net::HTTPSuccess)
      raise "Test server #{method.upcase} #{path} failed (#{response.code}): #{response.body}"
    end
    response.body.nil? || response.body.empty? ? {} : JSON.parse(response.body)
  end
end

World(TestRunnerWorld)

module TestRunnerRequestNormalization
  def call_api(http_method, path, opts = {})
    headers = opts.fetch(:header_params, {})
    if ENV['DD_TEST_SERVER_URL'] &&
        opts[:body].nil? &&
        opts.fetch(:form_params, {}).empty? &&
        !headers.key?('Content-Type')
      headers['Content-Type'] = ''
    end
    super
  end
end

DatadogAPIClient::APIClient.prepend(TestRunnerRequestNormalization)
