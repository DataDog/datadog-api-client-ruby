# Get tenancy configs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_tenancy_configs".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OCIIntegrationAPI.new
p api_instance.get_tenancy_configs()
