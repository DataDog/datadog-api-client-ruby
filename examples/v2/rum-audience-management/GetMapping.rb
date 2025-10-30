# Get mapping returns "Successful response with entity mapping configuration" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_mapping".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new
p api_instance.get_mapping("users")
