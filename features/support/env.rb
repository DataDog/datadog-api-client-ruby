require 'datadog_api_client'
require 'ddtrace'
require 'simplecov'
require 'time'
require 'timecop'
require 'vcr'

SimpleCov.start

Datadog.configure do |c|
  c.service = 'datadog-api-client-ruby'
  c.analytics_enabled = true
  c.use :ethon, {}
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

VCR.configure do |config|
  RecordMode.send(ENV["RECORD"] || "false", config)
  config.cassette_library_dir = "cassettes"
  config.hook_into :webmock
  config.before_record do |i|
    i.request.headers.delete('Dd-Api-Key')
    i.request.headers.delete('Dd-Application-Key')
    # TODO verify we don't store api_key and application_key as query params
  end
end

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end
