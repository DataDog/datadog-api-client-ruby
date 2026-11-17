# Get a segment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_product_analytics_segment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new
p api_instance.get_product_analytics_segment("8a1b2c3d-4e5f-6a7b-8c9d-0e1f2a3b4c5d")
