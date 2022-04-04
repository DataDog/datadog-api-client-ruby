# SimpleCov must start at the very top
# https://github.com/simplecov-ruby/simplecov/blob/master/README.md#getting-started
require 'simplecov'
SimpleCov.start do
  add_filter "/features/"
  add_filter "/spec"
end

require 'cucumber'
require 'datadog_api_client'
require 'ddtrace'
require 'time'
require 'timecop'
require 'vcr'


Datadog.configure do |c|
  c.time_now_provider = -> { Time.now_without_mock_time }
  c.ci.enabled = true
  c.ci.instrument :cucumber, operation_name: 'test'
  c.tracing.instrument :http
end

module RecordMode
  def self.true(config)
    config.default_cassette_options = { :record => :all, :allow_unused_http_interactions => false, }
  end

  def self.false(config)
    config.default_cassette_options = { :record => :none, :allow_unused_http_interactions => false }
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
  c.allow_http_connections_when_no_cassette = true
  RecordMode.send(ENV["RECORD"] || "false", c)
  c.cassette_library_dir = "cassettes"
  c.hook_into :webmock
  c.before_record do |i|
    i.request.headers.delete('Dd-Api-Key')
    i.request.headers.delete('Dd-Application-Key')
    # TODO verify we don't store api_key and application_key as query params
  end

  c.ignore_hosts (ENV["DD_AGENT_HOST"] || '127.0.0.1')
  c.ignore_request do |request|
    # Ignore traces
    request.headers.key? :'Datadog-Meta-Tracer-Version'
  end
end
