# Bulk update triage assignee of security signals returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalsBulkAssigneeUpdateRequest.new({
  data: [
    DatadogAPIClient::V2::SecurityMonitoringSignalsBulkAssigneeUpdateData.new({
      attributes: DatadogAPIClient::V2::SecurityMonitoringSignalsBulkAssigneeUpdateAttributes.new({
        assignee: "773b045d-ccf8-4808-bd3b-955ef6a8c940",
      }),
      id: "AAAAAWgN8Xwgr1vKDQAAAABBV2dOOFh3ZzZobm1mWXJFYTR0OA",
      type: DatadogAPIClient::V2::SecurityMonitoringSignalType::SIGNAL,
    }),
  ],
})
p api_instance.bulk_edit_security_monitoring_signals_assignee(body)
