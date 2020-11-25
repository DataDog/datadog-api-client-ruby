# SimpleCov must start at the very top
# https://github.com/simplecov-ruby/simplecov/blob/master/README.md#getting-started
require 'simplecov'
SimpleCov.start do
  add_filter "/features/"
  add_filter "/spec"
end

require 'datadog_api_client'
require 'ddtrace'
require 'time'
require 'timecop'
require 'vcr'


Datadog.configure do |c|
  c.service = 'datadog-api-client-ruby'
  c.time_provider = :realtime_with_timecop
  c.analytics_enabled = true
  c.use :cucumber, {'operation_name': 'test'}
  c.use :ethon, {}
  c.diagnostics.debug = ENV["DEBUG"].to_s.downcase != "false"
end

module RecordMode
  def self.true(config)
    config.default_cassette_options = { :record => :all }
  end

  def self.false(config)
    config.default_cassette_options = { :record => :none }
  end

  def self.none(config)
    config.ignore_request do
      true
    end
  end
end

def use_real_time?
  !(ENV["RECORD"] == nil || ENV["RECORD"] == "false")
end

VCR.configure do |c|
  RecordMode.send(ENV["RECORD"] || "false", c)
  c.cassette_library_dir = "cassettes"
  c.hook_into :webmock
  c.before_record do |i|
    i.request.headers.delete('Dd-Api-Key')
    i.request.headers.delete('Dd-Application-Key')
    # TODO verify we don't store api_key and application_key as query params
  end

  c.ignore_request do |request|
    # Ignore traces
    request.headers.key? :'Datadog-Meta-Tracer-Version'
  end
end

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end
