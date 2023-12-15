require 'json'
require 'active_support'
require 'active_support/time'
require 'digest'

require_relative '../scenarios_model_mapping'

SLEEP_AFTER_REQUEST = ENV.has_key?("SLEEP_AFTER_REQUEST") ? ENV["SLEEP_AFTER_REQUEST"].to_i : 0

module APIWorld
  def api
    Object.const_get("DatadogAPIClient")
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

      if ENV.key? 'DEBUG' then
        c.debugging = true if ENV['DEBUG'].downcase == "true" else false
      end

      c.enable_retry = true
    end
    configuration
  end

  def api_client
    @api_client ||= api::APIClient.new configuration
  end

  def api_error
    api::APIError
  end

  def sleep_after_request
    sleep SLEEP_AFTER_REQUEST unless ENV["RECORD"] == "false" || SLEEP_AFTER_REQUEST <= 0
  end

  def unique
    now = Time.now.utc
    scenario_name = @scenario.name.gsub(/[^A-Za-z0-9]+/, '_')[0, 100]
    prefix = ENV["RECORD"] == "none" ? "Test-Ruby" : "Test"
    @unique ||= "#{prefix}-#{scenario_name}-#{now.to_i}"
  end

  def fixtures
    u = unique
    u_hash = Digest::SHA256.hexdigest(u)[0, 16]
    alnum = u.gsub(/[^A-Za-z0-9]+/, '')
    @fixtures ||= {
      "unique": u,
      "unique_lower": u.downcase,
      "unique_upper": u.upcase,
      "unique_alnum": alnum,
      "unique_lower_alnum": alnum.downcase,
      "unique_upper_alnum": alnum.upcase,
      "unique_hash": u_hash,
      "timestamp": relative_time(false),
      "timeISO": relative_time(true),
      "uuid": generate_uuid(Time.now.utc),
    }
  end

  def generate_uuid(now)
    now.to_i.to_s[0, 8] + "-0000-0000-0000-" + now.to_i.to_s[0, 10] + "00"
  end

  def relative_time(iso)
    time_re = /now( *([+-]) *(\d+)([smhdMy]))?/
    lambda { |arg|
      ret = Time.now.utc
      m = arg.match time_re
      if m
        if m[1]
          num = (m[2] + m[3]).to_i
          unit = m[4]
          case unit
          when "s"
            ret += num.second
          when "m"
            ret += num.minute
          when "h"
            ret += num.hour
          when "d"
            ret += num.day
          when "M"
            ret += num.month
          when "y"
            ret += num.year
          end
        end
        return ret.rfc3339(3) if iso
        return ret.to_i
      end
      return nil
    }
  end

  def opts
    @opts ||= {}
  end

  def undo_operations
    return @undo_operations if @undo_operations
    @undo_operations = {}
    Dir.glob(File.join(__dir__, '..', "v*", 'undo.json')).each do |undo_path|
      m = File.expand_path(undo_path).match /features\/v(?<version>\d+)\/.*/
      version = m[:version]
      @undo_operations[version] = {}
      JSON.parse(File.read(undo_path)).each do |operation_id, settings|
        @undo_operations[version][operation_id.snakecase] = settings["undo"]
      end
    end
    @undo_operations
  end

  def build_undo_for(version, operation_id, api_instance = nil)
    operation = undo_operations
    raise "missing x-undo for #{version}" unless operation.key? version
    operation = operation[version]
    raise "missing x-undo for #{version}: #{operation_id}" unless operation.key? operation_id
    operation = operation[operation_id]
    raise "update x-undo for #{version}: #{operation_id}" unless operation["type"]

    return if operation["type"] != "unsafe"

    if operation["tag"] != nil
      undo_tag = operation["tag"].gsub(/\s/, '')
      undo_api = Object.const_get("DatadogAPIClient")
      undo_configuration = from_env(undo_api::Configuration.new)
      undo_configuration.api_key = ENV["DD_TEST_CLIENT_API_KEY"]
      undo_configuration.application_key = ENV["DD_TEST_CLIENT_APP_KEY"]
      undo_api_client = undo_api::APIClient.new undo_configuration
      api_instance = undo_api.const_get("V#{version}").const_get("#{undo_tag}API").new undo_api_client
    end

    api_instance ||= @api_instance
    operation_name = operation["operationId"].snakecase
    method = api_instance.method("#{operation_name}_with_http_info".to_sym)

    lambda do |response, request|
      args = operation["parameters"].map do |p|
        if p["origin"] && p["origin"] == "request"
          data = request[0]
        else
          data = response
        end
        if p["source"]
          [p["name"].to_sym, data.lookup(p["source"])]
        elsif p["template"]
          puts p["name"].to_sym
          [p["name"].to_sym,  p["template"].templated(data)]
        end
      end.to_h
      params = method.parameters.select { |p| p[0] == :req }.map { |p| args.delete(p[1]) }

      if api_instance.api_client.config.unstable_operations.has_key?("v#{@api_version}.#{operation_name}".to_sym)
        api_instance.api_client.config.unstable_operations["v#{@api_version}.#{operation_name}".to_sym] = true
      end
      lambda { method.call(*params) }
    end
  end

  def build_given(api_version, operation)
    api_name = operation["tag"].gsub(/\s/, '')
    operation_name = operation["operationId"].snakecase

    # make sure we have a fresh instance of API client and configuration
    given_api = Object.const_get("DatadogAPIClient")
    given_configuration = from_env(given_api::Configuration.new)
    given_configuration.api_key = ENV["DD_TEST_CLIENT_API_KEY"]
    given_configuration.application_key = ENV["DD_TEST_CLIENT_APP_KEY"]
    given_api_client = given_api::APIClient.new given_configuration
    given_api_instance = given_api.const_get("V#{api_version}").const_get("#{api_name}API").new given_api_client
    method = given_api_instance.method("#{operation_name}_with_http_info".to_sym)

    # find undo method
    undo_builder = build_undo_for(api_version, operation_name, given_api_instance)

    # enable unstable operation
    if given_configuration.unstable_operations.has_key?("v#{@api_version}.#{operation_name}".to_sym)
      given_configuration.unstable_operations["v#{@api_version}.#{operation_name}".to_sym] = true
    end

    # perform operation
    args = operation["parameters"].map do |p|
      result = JSON.parse(p["value"].templated fixtures) if p.key? "value"
      result = fixtures.lookup(p["source"]) if p.key? "source"
      result
    end if operation["parameters"]

    result = method.call(*args)[0]

    # register undo method
    @undo << undo_builder.call(result, args) if undo_builder

    # optional re-shaping
    result = result.lookup(operation['source']) if operation.key? 'source'

    # store response in fixtures
    fixtures[operation['key'].to_sym] = result if operation.key? 'key'

    # wait for resource propagation
    sleep_after_request

    result
  end

  def model_builder(param, obj)
    model = ScenariosModelMappings["v#{@api_version}.#{@operation_id}"][param]
    @api_client.convert_to_type(obj, model, "V#{@api_version}")
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
  @api_instance = api.const_get("V#{@api_version}").const_get("#{api_name}API").new api_client
end

Given('operation {string} enabled') do |name|
  "V#{@api_version}.#{name.snakecase}".to_sym
  configuration.unstable_operations["v#{@api_version}.#{name.snakecase}".to_sym] = true
end

Given(/^body with value (.*)$/) do |body|
  body_hash = JSON.parse(body.templated(fixtures), {:symbolize_names => true})
  opts[:body] = model_builder("body", body_hash)
end

Given(/^body from file "(.*)"$/) do |file|
  body = File.read(File.join(__dir__, "..", "v" + @api_version, file))
  body_hash = JSON.parse(body.templated(fixtures), {:symbolize_names => true})
  opts[:body] = model_builder("body", body_hash)
end

Given(/^request contains "([^"]+)" parameter from "([^"]+)"$/) do |parameter_name, fixture_path|
  opts[parameter_name.to_parameter.to_sym] = model_builder(parameter_name.to_parameter, fixtures.lookup(fixture_path))
end

Given(/^request contains "([^"]+)" parameter with value (.+)$/) do |parameter_name, value|
  opts[parameter_name.to_parameter.to_sym] = model_builder(parameter_name.to_parameter, JSON.parse(value.templated fixtures))
end

Given(/^new "([^"]+)" request$/) do |name|
  @operation_id = name
  @api_method = @api_instance.method("#{name.snakecase}_with_http_info".to_sym)
end

When('the request is sent') do
  params = @api_method.parameters.select { |p| p[0] == :req }.map { |p| opts.delete(p[1]) }
  undo_builder = build_undo_for(@api_version, @api_method.name.to_s.chomp('_with_http_info'))  # fail early on missing undo method

  begin
    @response = @api_method.call(*params, opts)
  rescue api_error => e
    # If we have an exception, make a stub response object to use for assertions
    # Instead of finding the response class of the method, we use the fact that all
    # responses returned have the `1` element set to the response code
    begin
      @response = [JSON.parse(e.response_body, :symbolize_names => true), e.code, nil]
  rescue JSON::ParserError
    @response = [e.response_body, e.code, nil]
    end
  end

  if @response[1].between?(200, 299)  then
    @undo << undo_builder.call(@response[0], params) if undo_builder
  end

end

When('the request with pagination is sent') do
  method_name = @api_method.name.to_s.chomp('_with_http_info') + "_with_pagination"
  method = @api_instance.method(method_name.to_sym)
  params = method.parameters.select { |p| p[0] == :req }.map { |p| opts.delete(p[1]) }

  begin
    result = []
    method.call(*params, opts) { |item| result.append(item) }
    @response = [result, 200, nil]
  rescue api_error => e
    # If we have an exception, make a stub response object to use for assertions
    # Instead of finding the response class of the method, we use the fact that all
    # responses returned have the `1` element set to the response code
    begin
      @response = [JSON.parse(e.response_body, :symbolize_names => true), e.code, nil]
  rescue JSON::ParserError
    @response = [e.response_body, e.code, nil]
    end
  end
end

Then(/^the response "([^"]+)" is equal to (.*)$/) do |response_path, value|
  body = @response[0].respond_to?(:to_body) ? @response[0].to_body : @response[0]
  expect(body.lookup response_path).to eq JSON.parse(value.templated(fixtures), :symbolize_names => true)
end

Then(/^the response status is (\d+) (.*)$/) do |status, msg|
  expect(@response[1]).to eq status.to_i
end

Then(/the response "([^"]+)" is false/) do |response_path|
  expect(@response[0].lookup response_path).to be false
end

Then(/the response "([^"]+)" has field "([^"]+)"/) do |response_path, field|
  expect(@response[0].lookup response_path).to include(field.to_sym)
end

Then(/^the response "([^"]+)" has the same value as "(.*)"$/) do |response_path, fixture_path|
  expect(@response[0].lookup response_path).to eq fixtures.lookup(fixture_path)
end

Then(/^the response "([^"]+)" has length ([0-9]+)$/) do |response_path, fixture_length|
  expect((@response[0].lookup response_path).length).to eq fixture_length.to_i
end

Then(/^the response has ([0-9]+) items/) do |fixture_length|
  expect(@response[0].length).to eq fixture_length.to_i
end

Then(/^the response "([^"]+)" has item with field "([^"]+)" with value (.*)$/) do |response_path, key_path, value|
  response_list = @response[0].lookup response_path
  expect(response_list.find { |item|
    begin
      item.lookup(key_path) == JSON.parse(value.templated(fixtures), :symbolize_names => true)
    rescue
      false
    end
  }).to_not be_nil
end

Then(/^the response "([^"]+)" array contains value (.*)$/) do |response_path, value|
  body = @response[0].respond_to?(:to_body) ? @response[0].to_body : @response[0]
  expect(body.lookup response_path).to include(JSON.parse(value.templated(fixtures), :symbolize_names => true))
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
