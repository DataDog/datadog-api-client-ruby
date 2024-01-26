# Create a new API returns "API created successfully" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_open_api".to_sym] = true
end
api_instance = DatadogAPIClient::V2::APIManagementAPI.new
opts = {
  openapi_spec_file: File.open("openapi-spec.yaml", "r"),
}
p api_instance.create_open_api(opts)
