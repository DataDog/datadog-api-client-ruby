# Bulk update security signals returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalsBulkUpdateRequest.new({
  data: [
    DatadogAPIClient::V2::SecurityMonitoringSignalsBulkUpdateData.new({
      attributes: DatadogAPIClient::V2::SecurityMonitoringSignalUpdateAttributes.new({
        archive_reason: DatadogAPIClient::V2::SecurityMonitoringSignalArchiveReason::NONE,
        assignee: DatadogAPIClient::V2::SecurityMonitoringTriageUser.new({
          uuid: "773b045d-ccf8-4808-bd3b-955ef6a8c940",
        }),
        state: DatadogAPIClient::V2::SecurityMonitoringSignalState::OPEN,
      }),
      id: "AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA",
      type: DatadogAPIClient::V2::SecurityMonitoringSignalType::SIGNAL,
    }),
  ],
})
p api_instance.bulk_edit_security_monitoring_signals(body)
