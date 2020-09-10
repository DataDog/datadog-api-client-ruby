require 'datadog_api_client'
require 'ddtrace'
require 'time'
require 'timecop'
require 'vcr'

Datadog.configure do |c|
  # c.use :action_cable, options
end

VCR.configure do |config|
  config.cassette_library_dir = "cassettes"
  config.hook_into :webmock
  config.before_record do |i|
    i.request.headers.delete('Dd-Api-Key')
    i.request.headers.delete('Dd-Application-Key')
    # TODO verify we don't store api_key and application_key as query params
  end
end
