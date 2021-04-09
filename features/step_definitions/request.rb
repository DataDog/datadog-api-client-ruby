require 'json'

module APIWorld
  def api
    Object.const_get("DatadogAPIClient::V#{@api_version}")
  end

  def configuration
    @configuration ||= from_env(api::Configuration.new)
  end

  def from_env(configuration)
    configuration.configure do |c|
      if ENV.key? 'DD_TEST_SITE' then
        c.server_index = 2
        c.server_variables[:site] = ENV['DD_TEST_SITE']
      end
    end
    configuration
  end

  def api_client
    @api_client ||= api::APIClient.new configuration
  end

  def api_error
    api::APIError
  end

  def unique
    now = Time.now
    scenario_name = @scenario.name.gsub(/[^A-Za-z0-9]+/, '_')[0..100]
    prefix = ENV["RECORD"] == "none" ? "Test-Ruby" : "Test"
    @unique ||= "#{prefix}-#{scenario_name}-#{now.to_i}"
  end

  def fixtures
    u = unique
    @fixtures ||= {
      "unique": u,
      "unique_lower": u.downcase,
      "unique_alnum": u.gsub(/[^A-Za-z0-9]+/, ''),
      "now_ts": Time.now.to_i,
      "now_iso": Time.now.iso8601,
      "hour_later_ts": (Time.now + 3600).to_i,
      "hour_later_iso": (Time.now + 3600).iso8601,
      "hour_ago_ts": (Time.now - 3600).to_i,
      "hour_ago_iso": (Time.now - 3600).iso8601,
    }
  end

  def opts
    @opts ||= {}
  end

  def undo_operations
    return @undo_operations if @undo_operations
    undo_path = File.join(__dir__, '..', "v#{@api_version}", 'undo.json')
    @undo_operations ||= JSON.parse(File.read(undo_path)).map{
      |operation_id, settings| [operation_id.snakecase, settings["undo"]]
    }.to_h
  end

  def build_undo_for(operation_id, api_instance = nil)
    raise "missing x-undo for #{operation_id}" unless undo_operations.key? operation_id

    operation = undo_operations[operation_id]
    raise "update x-undo for #{operation_id}" unless operation["type"]

    return if operation["type"] != "unsafe"

    api_instance ||= @api_instance
    operation_name = operation["operationId"].snakecase
    method = api_instance.method("#{operation_name}_with_http_info".to_sym)

    lambda do |response|
      args = operation["parameters"].map{ |p| response.lookup(p["source"]) }

      api_instance.api_client.config.unstable_operations[operation_name.to_sym] = true
      lambda { method.call(*args) }
    end
  end

  def build_given(api_version, operation)
    api_name = operation["tag"].gsub(/\s/, '')
    operation_name = operation["operationId"].snakecase

    # make sure we have a fresh instance of API client and configuration
    given_api = Object.const_get("DatadogAPIClient::V#{api_version}")
    given_configuration = from_env(given_api::Configuration.new)
    given_configuration.api_key = ENV["DD_TEST_CLIENT_API_KEY"]
    given_configuration.application_key = ENV["DD_TEST_CLIENT_APP_KEY"]
    Kernel.puts given_configuration.inspect
    Kernel.puts given_configuration.base_url
    given_api_client = given_api::APIClient.new given_configuration
    given_api_instance = api.const_get("#{api_name}API").new given_api_client
    method = given_api_instance.method("#{operation_name}_with_http_info".to_sym)

    # find undo method
    undo_builder = build_undo_for(operation_name, given_api_instance)

    # enable unstable operation
    given_configuration.unstable_operations[operation_name.to_sym] = true

    # perform operation
    args = operation["parameters"].map do |p|
      result = JSON.parse(p["value"].templated fixtures) if p.key? "value"
      result = fixtures.lookup(p["source"]) if p.key? "source"
      result
    end if operation["parameters"]

    result = method.call(*args)[0]

    # register undo method
    @undo << undo_builder.call(result) if undo_builder

    # optional re-shaping
    result = result.lookup(operation['source']) if operation.key? 'source'

    # store response in fixtures
    fixtures[operation['key'].to_sym] = result if operation.key? 'key'

    result
  end
end

World(APIWorld)


Given('a valid "apiKeyAuth" key in the system') do
  configuration.api_key = ENV["DD_TEST_CLIENT_API_KEY"]
end

Given('a valid "appKeyAuth" key in the system') do
  configuration.application_key = ENV["DD_TEST_CLIENT_APP_KEY"]
end

Given(/^an instance of "([^"]+)" API$/) do |api_name|
  configuration.debugging = ENV["DEBUG"].present?
  @api_instance = api.const_get("#{api_name}API").new api_client
end

Given('operation {string} enabled') do |name|
  configuration.unstable_operations[name.snakecase.to_sym] = true
end

Given(/^body (.*)$/) do |body|
  opts[:body] = JSON.parse(body.templated fixtures)
end

Given(/^request contains "([^"]+)" parameter from "([^"]+)"$/) do |parameter_name, fixture_path|
  opts[parameter_name.to_sym] = fixtures.lookup(fixture_path)
end

Given(/^request contains "([^"]+)" parameter with value (.+)$/) do |parameter_name, value|
  opts[parameter_name.snakecase.to_sym] = JSON.parse(value.templated fixtures)
end

Given(/^new "([^"]+)" request$/) do |name|
  @api_method = @api_instance.method("#{name.underscore}_with_http_info".to_sym)
end

When('the request is sent') do
  params = @api_method.parameters.select { |p| p[0] == :req }.map { |p| opts.delete(p[1]) }
  undo_builder = build_undo_for @api_method.name.to_s.chomp('_with_http_info')  # fail early on missing undo method

  begin
    @response = @api_method.call(*params, opts)
  rescue api_error => e
    # If we have an exception, make a stub response object to use for assertions
    # Instead of finding the response class of the method, we use the fact that all
    # responses returned have the `1` element set to the response code
    @response = [nil, e.code, nil]
  end

  if @response[1].between?(200, 299)  then
    @undo << undo_builder.call(@response[0]) if undo_builder
  end
  
end

Then(/^the response "([^"]+)" is equal to (.*)$/) do |response_path, value|
  expect(@response[0].to_body.lookup response_path).to eq JSON.parse(value.templated(fixtures), :symbolize_names => true)
end

Then(/^the response status is (\d+) (.*)$/) do |status, msg|
  expect(@response[1]).to eq status.to_i
end

Then(/the response "([^"]+)" is false/) do |response_path|
  expect(@response[0].lookup response_path).to be false
end

Then(/^the response "([^"]+)" has the same value as "(.*)"$/) do |response_path, fixture_path|
  expect(@response[0].lookup response_path).to eq fixtures.lookup(fixture_path)
end

Then(/^the response "([^"]+)" has length ([0-9]+)$/) do |response_path, fixture_length|
  expect((@response[0].lookup response_path).length).to eq fixture_length.to_i
end

Dir.glob(File.join(__dir__, '..', "v*", 'given.json')).each do |f|
  m = File.expand_path(f).match /features\/v(?<version>\d+)\/.*/
  version = m[:version]
  JSON.parse(File.read(f)).map do |settings|
    Given(settings['step']) do
      build_given(version, settings)
    end
  end
end
