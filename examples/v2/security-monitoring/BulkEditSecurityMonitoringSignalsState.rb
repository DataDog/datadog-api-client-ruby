# Bulk update triage state of security signals returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalsBulkStateUpdateRequest.new({
  data: [
    DatadogAPIClient::V2::SecurityMonitoringSignalsBulkStateUpdateData.new({
      attributes: DatadogAPIClient::V2::SecurityMonitoringSignalStateUpdateAttributes.new({
        archive_reason: DatadogAPIClient::V2::SecurityMonitoringSignalArchiveReason::NONE,
        state: DatadogAPIClient::V2::SecurityMonitoringSignalState::OPEN,
      }),
      id: "AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA",
      type: DatadogAPIClient::V2::SecurityMonitoringSignalType::SIGNAL,
    }),
  ],
})
p api_instance.bulk_edit_security_monitoring_signals_state(body)
