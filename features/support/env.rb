# SimpleCov must start at the very top
# https://github.com/simplecov-ruby/simplecov/blob/master/README.md#getting-started
require 'simplecov'
SimpleCov.start do
  add_filter "/features/"
  add_filter "/spec"
end

require 'cgi'
require 'cucumber'
require 'datadog_api_client'
require 'datadog/ci'
require 'time'
require 'timecop'
require 'vcr'

Datadog.configure do |c|
  c.ci.enabled = true
  c.ci.instrument :cucumber
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

filtered_headers = ["Accept", "Content-Type"]

VCR.configure do |c|
  c.register_request_matcher :safe_path do |r1, r2|
    r1.parsed_uri.path == CGI.unescape(r2.parsed_uri.path)
  end
  c.register_request_matcher :safe_headers do |r1, r2|
    r1.headers.slice(*filtered_headers) == r2.headers.slice(*filtered_headers)
  end
  c.register_request_matcher :ignore_query_param_ordering do |r1, r2|
    uri1 = URI(r1.uri)
    uri2 = URI(r2.uri)
    query1 = CGI.parse(uri1.query || '').transform_values(&:sort)
    query2 = CGI.parse(uri2.query || '').transform_values(&:sort)
    query1 == query2
  end
  c.default_cassette_options = {
    :record_on_error => false,
    :match_requests_on => [:method, :host, :safe_path, :ignore_query_param_ordering, :body_as_json, :safe_headers],
  }
  c.allow_http_connections_when_no_cassette = true
  RecordMode.send(ENV["RECORD"] || "false", c)
  c.cassette_library_dir = "cassettes"
  c.hook_into :webmock
  c.before_record do |i|
    i.request.headers.delete('Dd-Api-Key')
    i.request.headers.delete('Dd-Application-Key')
  end

  c.ignore_hosts (ENV["DD_AGENT_HOST"] || '127.0.0.1')
  c.ignore_request do |request|
    # Ignore traces
    request.headers.key? :'Datadog-Meta-Tracer-Version'
  end
end
