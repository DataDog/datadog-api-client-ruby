# Get an event email address returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_event_email_address".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new
p api_instance.get_event_email_address("00000000-0000-0000-0000-000000000001")
