# Update case due date returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::CaseUpdateDueDateRequest.new({
  data: DatadogAPIClient::V2::CaseUpdateDueDate.new({
    attributes: DatadogAPIClient::V2::CaseUpdateDueDateAttributes.new({
      due_date: "2026-12-31",
    }),
    type: DatadogAPIClient::V2::CaseResourceType::CASE,
  }),
})
p api_instance.update_case_due_date("case_id", body)
