# Trigger a Bits AI investigation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.trigger_investigation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::BitsAIAPI.new

body = DatadogAPIClient::V2::TriggerInvestigationRequest.new({
  data: DatadogAPIClient::V2::TriggerInvestigationRequestData.new({
    attributes: DatadogAPIClient::V2::TriggerInvestigationRequestDataAttributes.new({
      trigger: DatadogAPIClient::V2::TriggerAttributes.new({
        monitor_alert_trigger: DatadogAPIClient::V2::MonitorAlertTriggerAttributes.new({
          event_id: "1234567890123456789",
          event_ts: 1700000000000,
          monitor_id: 12345678,
        }),
        type: DatadogAPIClient::V2::TriggerType::MONITOR_ALERT_TRIGGER,
      }),
    }),
    type: DatadogAPIClient::V2::TriggerInvestigationRequestType::TRIGGER_INVESTIGATION_REQUEST,
  }),
})
p api_instance.trigger_investigation(body)
