# Create a security signal investigation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_signal_investigation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationRequestData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationRequestAttributes.new({
      deployment: "live",
      signal_id: "AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA",
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringSignalInvestigationType::INVESTIGATION_SIGNAL,
  }),
})
p api_instance.create_signal_investigation(body)
