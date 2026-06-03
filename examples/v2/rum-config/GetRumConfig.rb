# Get the RUM configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_rum_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumConfigAPI.new
p api_instance.get_rum_config()
