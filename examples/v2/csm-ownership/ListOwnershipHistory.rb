# List ownership inference history for a resource returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_ownership_history".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CSMOwnershipAPI.new
p api_instance.list_ownership_history("res-1")
