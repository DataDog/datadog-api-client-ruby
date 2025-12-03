# Attach security finding to a Jira issue returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::AttachJiraIssueRequest.new({
  data: DatadogAPIClient::V2::AttachJiraIssueRequestData.new({
    attributes: DatadogAPIClient::V2::AttachJiraIssueRequestDataAttributes.new({
      jira_issue_url: "https://datadoghq-sandbox-538.atlassian.net/browse/CSMSEC-105476",
    }),
    relationships: DatadogAPIClient::V2::AttachJiraIssueRequestDataRelationships.new({
      findings: DatadogAPIClient::V2::Findings.new({
        data: [
          DatadogAPIClient::V2::FindingData.new({
            id: "OTQ3NjJkMmYwMTIzMzMxNTc1Y2Q4MTA5NWU0NTBmMDl-ZjE3NjMxZWVkYzBjZGI1NDY2NWY2OGQxZDk4MDY4MmI=",
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
})
p api_instance.attach_jira_issue(body)
