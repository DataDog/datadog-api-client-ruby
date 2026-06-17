# Create or update an indicator triage state returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_io_c_triage_state".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::IoCTriageWriteRequest.new({
  data: DatadogAPIClient::V2::IoCTriageWriteRequestData.new({
    attributes: DatadogAPIClient::V2::IoCTriageWriteRequestAttributes.new({
      indicator: "192.0.2.1",
      triage_state: DatadogAPIClient::V2::IoCTriageState::REVIEWED,
    }),
    type: "ioc_triage_state",
  }),
})
p api_instance.create_io_c_triage_state(body)
