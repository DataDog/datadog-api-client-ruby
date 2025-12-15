# Create Jira issues for security findings returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_jira_issues".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateJiraIssueRequestArray.new({
  data: [
    DatadogAPIClient::V2::CreateJiraIssueRequestData.new({
      attributes: DatadogAPIClient::V2::CreateJiraIssueRequestDataAttributes.new({
        assignee_id: "f315bdaf-9ee7-4808-a9c1-99c15bf0f4d0",
        description: "A description of the Jira issue.",
        fields: {
          "key1": "value", "key2": "['value']", "key3": "{'key4': 'value'}",
        },
        priority: DatadogAPIClient::V2::CasePriority::NOT_DEFINED,
        title: "A title for the Jira issue.",
      }),
      relationships: DatadogAPIClient::V2::CreateJiraIssueRequestDataRelationships.new({
        findings: DatadogAPIClient::V2::Findings.new({
          data: [
            DatadogAPIClient::V2::FindingData.new({
              id: "ZGVmLTAwcC1pZXJ-aS0wZjhjNjMyZDNmMzRlZTgzNw==",
              type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
            }),
          ],
        }),
        project: DatadogAPIClient::V2::CaseManagementProject.new({
          data: DatadogAPIClient::V2::CaseManagementProjectData.new({
            id: "aeadc05e-98a8-11ec-ac2c-da7ad0900001",
            type: DatadogAPIClient::V2::CaseManagementProjectDataType::PROJECTS,
          }),
        }),
      }),
      type: DatadogAPIClient::V2::JiraIssuesDataType::JIRA_ISSUES,
    }),
  ],
})
p api_instance.create_jira_issues(body)
