# Modify the triage assignee of a security signal returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SecurityMonitoringAPI.new

body = DatadogAPIClient::V1::SignalAssigneeUpdateRequest.new({
  assignee: "773b045d-ccf8-4808-bd3b-955ef6a8c940",
})
p api_instance.edit_security_monitoring_signal_assignee("AQAAAYDiB_Ol8PbzFAAAAABBWURpQl9PbEFBQU0yeXhGTG9ZV2JnQUE", body)
