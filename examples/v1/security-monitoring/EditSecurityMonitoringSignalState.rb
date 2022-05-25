# Change the triage state of a security signal returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SecurityMonitoringAPI.new

body = DatadogAPIClient::V1::SignalStateUpdateRequest.new({
  archive_reason: DatadogAPIClient::V1::SignalArchiveReason::NONE,
  state: DatadogAPIClient::V1::SignalTriageState::OPEN,
})
p api_instance.edit_security_monitoring_signal_state("AQAAAYDiB_Ol8PbzFAAAAABBWURpQl9PbEFBQU0yeXhGTG9ZV2JnQUE", body)
