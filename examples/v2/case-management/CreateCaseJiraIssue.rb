# Create Jira issue for case returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_case_jira_issue".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::JiraIssueCreateRequest.new({
  data: DatadogAPIClient::V2::JiraIssueCreateData.new({
    attributes: DatadogAPIClient::V2::JiraIssueCreateAttributes.new({
      fields: {},
      issue_type_id: "10001",
      jira_account_id: "1234",
      project_id: "5678",
    }),
    type: DatadogAPIClient::V2::JiraIssueResourceType::ISSUES,
  }),
})
p api_instance.create_case_jira_issue("case_id", body)
