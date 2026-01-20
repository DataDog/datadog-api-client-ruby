# Create Jira issue template returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_jira_issue_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::JiraIntegrationAPI.new

body = DatadogAPIClient::V2::JiraIssueTemplateCreateRequest.new({
  data: DatadogAPIClient::V2::JiraIssueTemplateCreateRequestData.new({
    attributes: DatadogAPIClient::V2::JiraIssueTemplateCreateRequestAttributes.new({
      fields: {
        "description": "{'payload': 'Test', 'type': 'json'}",
      },
      issue_type_id: "12730",
      jira_account: DatadogAPIClient::V2::JiraIssueTemplateCreateRequestAttributesJiraAccount.new({
        id: "80f16d40-1fba-486e-b1fc-983e6ca19bec",
      }),
      name: "test-template",
      project_id: "10772",
    }),
    type: DatadogAPIClient::V2::JiraIssueTemplateType::JIRA_ISSUE_TEMPLATE,
  }),
})
p api_instance.create_jira_issue_template(body)
