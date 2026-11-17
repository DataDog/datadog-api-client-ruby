# Get a Product Analytics launch returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_product_analytics_launch".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new
p api_instance.get_product_analytics_launch("5e3c7a1b-2d4f-4e6a-8b9c-0d1e2f3a4b5c")
