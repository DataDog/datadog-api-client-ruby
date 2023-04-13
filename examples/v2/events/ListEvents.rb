# Get a list of events returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_events".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new
p api_instance.list_events()
