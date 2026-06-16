# Get Application Security details for a service returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_asm_service_by_name".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new
p api_instance.get_asm_service_by_name("service_filter")
