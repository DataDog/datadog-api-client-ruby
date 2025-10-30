# List connections returns "Successful response with list of connections" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_connections".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new
p api_instance.list_connections("users")
