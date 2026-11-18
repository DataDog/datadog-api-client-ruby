# Delete a Product Analytics monitor returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_product_analytics_monitor".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new
api_instance.delete_product_analytics_monitor("12345")
