# Get automatic investigation settings for a monitor returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_monitor_automation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsAIAPI.new
p api_instance.get_monitor_automation(9223372036854775807)
