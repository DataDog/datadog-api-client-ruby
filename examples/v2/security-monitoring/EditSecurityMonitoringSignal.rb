# Update security signal triage state or assignee returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSignalUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSignalUpdateAttributes.new({
      archive_reason: DatadogAPIClient::V2::SecurityMonitoringSignalArchiveReason::NONE,
      assignee: DatadogAPIClient::V2::SecurityMonitoringTriageUser.new({
        uuid: "773b045d-ccf8-4808-bd3b-955ef6a8c940",
      }),
      state: DatadogAPIClient::V2::SecurityMonitoringSignalState::OPEN,
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringSignalMetadataType::SIGNAL_METADATA,
  }),
})
p api_instance.edit_security_monitoring_signal("signal_id", body)
