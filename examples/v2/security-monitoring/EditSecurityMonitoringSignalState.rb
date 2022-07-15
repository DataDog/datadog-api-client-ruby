# Change the triage state of a security signal returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalStateUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSignalStateUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSignalStateUpdateAttributes.new({
      archive_reason: DatadogAPIClient::V2::SecurityMonitoringSignalArchiveReason::NONE,
      state: DatadogAPIClient::V2::SecurityMonitoringSignalState::OPEN,
    }),
  }),
})
p api_instance.edit_security_monitoring_signal_state("AQAAAYG1bl5K4HuUewAAAABBWUcxYmw1S0FBQmt2RmhRN0V4ZUVnQUE", body)
