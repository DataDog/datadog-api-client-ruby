# List Product Analytics monitors returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_product_analytics_monitors".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new
p api_instance.list_product_analytics_monitors()
