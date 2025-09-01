# Update the assignee of an issue returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ErrorTrackingAPI.new

# there is a valid "issue" in the system
ISSUE_ID = ENV["ISSUE_ID"]

body = DatadogAPIClient::V2::IssueUpdateAssigneeRequest.new({
  data: DatadogAPIClient::V2::IssueUpdateAssigneeRequestData.new({
    id: "87cb11a0-278c-440a-99fe-701223c80296",
    type: DatadogAPIClient::V2::IssueUpdateAssigneeRequestDataType::ASSIGNEE,
  }),
})
p api_instance.update_issue_assignee(ISSUE_ID, body)
