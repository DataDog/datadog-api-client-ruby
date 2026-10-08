# Disable automatic investigations for a monitor

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_monitor_automation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsAIAPI.new

# there is a valid "monitor" in the system
MONITOR_ID = ENV["MONITOR_ID"]

body = DatadogAPIClient::V2::MonitorAutomationRequest.new({
  data: DatadogAPIClient::V2::MonitorAutomationRequestData.new({
    type: DatadogAPIClient::V2::MonitorAutomationType::MONITOR_AUTOMATION,
    attributes: DatadogAPIClient::V2::MonitorAutomationAttributes.new({
      enabled: false,
    }),
  }),
})
p api_instance.update_monitor_automation(MONITOR_ID.to_i, body)
