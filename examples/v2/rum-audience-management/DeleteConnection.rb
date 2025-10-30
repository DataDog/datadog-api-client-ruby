# Delete connection returns "Connection deleted successfully" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_connection".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new
api_instance.delete_connection("connection-id-123", "users")
