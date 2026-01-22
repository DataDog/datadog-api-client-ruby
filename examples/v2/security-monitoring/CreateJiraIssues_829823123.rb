# Create Jira issue for security findings returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateJiraIssueRequestArray.new({
  data: [
    DatadogAPIClient::V2::CreateJiraIssueRequestData.new({
      attributes: DatadogAPIClient::V2::CreateJiraIssueRequestDataAttributes.new({
        title: "A title",
        description: "A description",
      }),
      relationships: DatadogAPIClient::V2::CreateJiraIssueRequestDataRelationships.new({
        findings: DatadogAPIClient::V2::Findings.new({
          data: [
            DatadogAPIClient::V2::FindingData.new({
              id: "a3ZoLXNjbS14eXV-aS0wNWY5MGYwMGE4NDg2ODdlOA==",
              type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
            }),
            DatadogAPIClient::V2::FindingData.new({
              id: "eWswLWJsdC1hZm5-aS0wMjRlYTgwMzVkZTU1MGIwYQ==",
              type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
            }),
          ],
        }),
        project: DatadogAPIClient::V2::CaseManagementProject.new({
          data: DatadogAPIClient::V2::CaseManagementProjectData.new({
            id: "959a6f71-bac8-4027-b1d3-2264f569296f",
            type: DatadogAPIClient::V2::CaseManagementProjectDataType::PROJECTS,
          }),
        }),
      }),
      type: DatadogAPIClient::V2::JiraIssuesDataType::JIRA_ISSUES,
    }),
  ],
})
p api_instance.create_jira_issues(body)
