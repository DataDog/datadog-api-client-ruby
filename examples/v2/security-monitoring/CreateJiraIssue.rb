# Create Jira issues for security findings returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_jira_issue".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::JiraIssueRequest.new({
  data: DatadogAPIClient::V2::JiraIssueDataRequest.new({
    attributes: DatadogAPIClient::V2::JiraIssueDataAttributesRequest.new({
      account_id: "f7ccdf99-0e22-4378-bdf9-03fde5379fea",
      fields: DatadogAPIClient::V2::JiraIssueCustomFields.new({}),
      issue_type: "story",
      issuetype_id: "1235",
      mode: DatadogAPIClient::V2::JiraIssueDataAttributesRequestMode::SINGLE,
      project_id: "1234",
      project_key: "SEC",
    }),
    id: "ID",
    meta: DatadogAPIClient::V2::JiraIssueDataMeta.new({
      findings: [
        DatadogAPIClient::V2::JiraIssueFinding.new({
          description: "Description",
          ids: [
            DatadogAPIClient::V2::JiraIssueFindingId.new({
              discovered: 123213123,
              id: "afa-afa-hze",
              resource: "Resource",
              tags: "akjasd:asdsad",
            }),
          ],
          impacted: 1,
          references: "",
          remediation: "Remediation",
          severity: DatadogAPIClient::V2::FindingStatus::CRITICAL,
          title: "Title",
          type: "ciem",
        }),
      ],
      vulnerabilities: [
        DatadogAPIClient::V2::JiraIssueFinding.new({
          description: "Description",
          ids: [
            DatadogAPIClient::V2::JiraIssueFindingId.new({
              discovered: 123213123,
              id: "afa-afa-hze",
              resource: "Resource",
              tags: "akjasd:asdsad",
            }),
          ],
          impacted: 1,
          references: "",
          remediation: "Remediation",
          severity: DatadogAPIClient::V2::FindingStatus::CRITICAL,
          title: "Title",
          type: "ciem",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::JiraIssueType::JIRA_ISSUE,
  }),
})
p api_instance.create_jira_issue(body)
