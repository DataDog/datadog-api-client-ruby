# Update an API returns "API updated successfully" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_open_api".to_sym] = true
end
api_instance = DatadogAPIClient::V2::APIManagementAPI.new

# there is a valid "managed_api" in the system
MANAGED_API_DATA_ID = ENV["MANAGED_API_DATA_ID"]
opts = {
  openapi_spec_file: File.open("openapi-spec.yaml", "r"),
}
p api_instance.update_open_api(MANAGED_API_DATA_ID, opts)
