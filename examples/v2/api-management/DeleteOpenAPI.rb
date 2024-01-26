# Delete an API returns "API deleted successfully" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_open_api".to_sym] = true
end
api_instance = DatadogAPIClient::V2::APIManagementAPI.new

# there is a valid "managed_api" in the system
MANAGED_API_DATA_ID = ENV["MANAGED_API_DATA_ID"]
api_instance.delete_open_api(MANAGED_API_DATA_ID)
