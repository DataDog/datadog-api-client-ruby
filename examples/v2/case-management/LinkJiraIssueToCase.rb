# Link existing Jira issue to case returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.link_jira_issue_to_case".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::JiraIssueLinkRequest.new({
  data: DatadogAPIClient::V2::JiraIssueLinkData.new({
    attributes: DatadogAPIClient::V2::JiraIssueLinkAttributes.new({
      jira_issue_url: "https://jira.example.com/browse/PROJ-123",
    }),
    type: DatadogAPIClient::V2::JiraIssueResourceType::ISSUES,
  }),
})
api_instance.link_jira_issue_to_case("case_id", body)
