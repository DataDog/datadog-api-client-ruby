# Update Jira issue template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_jira_issue_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::JiraIntegrationAPI.new

body = DatadogAPIClient::V2::JiraIssueTemplateUpdateRequest.new({
  data: DatadogAPIClient::V2::JiraIssueTemplateUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::JiraIssueTemplateUpdateRequestAttributes.new({
      fields: {
        "description": "{'payload': 'Updated Description', 'type': 'json'}",
      },
      name: "test_template_updated",
    }),
    type: DatadogAPIClient::V2::JiraIssueTemplateType::JIRA_ISSUE_TEMPLATE,
  }),
})
p api_instance.update_jira_issue_template("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
