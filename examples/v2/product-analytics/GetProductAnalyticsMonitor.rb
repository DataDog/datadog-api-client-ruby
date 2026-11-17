# Get a Product Analytics monitor returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_product_analytics_monitor".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new
p api_instance.get_product_analytics_monitor("12345")
