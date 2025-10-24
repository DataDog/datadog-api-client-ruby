# List event email addresses returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_event_email_addresses".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new
p api_instance.list_event_email_addresses()
