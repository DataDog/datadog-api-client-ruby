# Update monitor automatic investigation settings returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_monitor_automation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsAIAPI.new

body = DatadogAPIClient::V2::MonitorAutomationRequest.new({
  data: DatadogAPIClient::V2::MonitorAutomationRequestData.new({
    attributes: DatadogAPIClient::V2::MonitorAutomationAttributes.new({
      enabled: true,
    }),
    type: DatadogAPIClient::V2::MonitorAutomationType::MONITOR_AUTOMATION,
  }),
})
p api_instance.update_monitor_automation(9223372036854775807, body)
