# Modify the triage assignee of a security signal returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringSignalAssigneeUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringSignalAssigneeUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringSignalAssigneeUpdateAttributes.new({
      assignee: DatadogAPIClient::V2::SecurityMonitoringTriageUser.new({
        uuid: "",
      }),
    }),
  }),
})
p api_instance.edit_security_monitoring_signal_assignee("AQAAAYG1bl5K4HuUewAAAABBWUcxYmw1S0FBQmt2RmhRN0V4ZUVnQUE", body)
