# List all forms returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_forms".to_sym] = true
end
api_instance = DatadogAPIClient::V2::FormsAPI.new
p api_instance.list_forms()
