# Revoke an on-call event email address returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_on_call_event_email_address".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EventsAPI.new
api_instance.delete_on_call_event_email_address("00000000-0000-0000-0000-000000000001")
