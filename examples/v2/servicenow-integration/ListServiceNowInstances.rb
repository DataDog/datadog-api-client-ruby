# List ServiceNow instances returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_service_now_instances".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ServiceNowIntegrationAPI.new
p api_instance.list_service_now_instances()
