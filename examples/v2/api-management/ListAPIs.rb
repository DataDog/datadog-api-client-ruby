# List APIs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_apis".to_sym] = true
end
api_instance = DatadogAPIClient::V2::APIManagementAPI.new
p api_instance.list_apis()
