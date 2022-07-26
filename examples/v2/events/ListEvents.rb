# Get a list of events returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_events] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new
p api_instance.list_events()
