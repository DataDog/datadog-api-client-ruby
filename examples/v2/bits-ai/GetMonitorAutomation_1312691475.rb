# Read automatic investigation settings for a new monitor

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_monitor_automation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsAIAPI.new

# there is a valid "monitor" in the system
MONITOR_ID = ENV["MONITOR_ID"]
p api_instance.get_monitor_automation(MONITOR_ID.to_i)
