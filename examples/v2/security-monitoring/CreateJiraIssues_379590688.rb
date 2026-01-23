# Create Jira issue for security finding returns "Created" response

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
              id: "YmNlZmJhYTcyMDU5ZDk0ZDhiNjRmNGI0NDk4MDdiNzN-MDJlMjg0NzNmYzJiODY2MzJkNjU0OTI4NmVhZTUyY2U=",
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
