# List ServiceNow users returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_service_now_users".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceNowIntegrationAPI.new
p api_instance.list_service_now_users("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
