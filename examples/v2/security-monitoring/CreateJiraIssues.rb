# Create Jira issues for security findings returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateJiraIssueRequestArray.new({
  data: [
    DatadogAPIClient::V2::CreateJiraIssueRequestData.new({
      type: DatadogAPIClient::V2::JiraIssuesDataType::JIRA_ISSUES,
      attributes: DatadogAPIClient::V2::CreateJiraIssueRequestDataAttributes.new({}),
      relationships: DatadogAPIClient::V2::CreateJiraIssueRequestDataRelationships.new({
        _case: DatadogAPIClient::V2::CreateJiraIssueRequestDataRelationshipsCase.new({
          data: DatadogAPIClient::V2::CreateJiraIssueRequestDataRelationshipsCaseData.new({
            type: DatadogAPIClient::V2::CaseDataType::CASES,
            id: "53e242c6-a7d6-46ad-9680-b8d14753f716",
          }),
        }),
      }),
    }),
    DatadogAPIClient::V2::CreateJiraIssueRequestData.new({
      type: DatadogAPIClient::V2::JiraIssuesDataType::JIRA_ISSUES,
      attributes: DatadogAPIClient::V2::CreateJiraIssueRequestDataAttributes.new({}),
      relationships: DatadogAPIClient::V2::CreateJiraIssueRequestDataRelationships.new({
        _case: DatadogAPIClient::V2::CreateJiraIssueRequestDataRelationshipsCase.new({
          data: DatadogAPIClient::V2::CreateJiraIssueRequestDataRelationshipsCaseData.new({
            type: DatadogAPIClient::V2::CaseDataType::CASES,
            id: "195772b2-1f53-41d2-b81e-48c8e6c21d33",
          }),
        }),
      }),
    }),
  ],
  included: [
    DatadogAPIClient::V2::CreateCaseRequestData.new({
      type: DatadogAPIClient::V2::CaseDataType::CASES,
      attributes: DatadogAPIClient::V2::CreateCaseRequestDataAttributes.new({
        title: "A title",
        description: "A description",
      }),
      relationships: DatadogAPIClient::V2::CreateCaseRequestDataRelationships.new({
        project: DatadogAPIClient::V2::CaseManagementProject.new({
          data: DatadogAPIClient::V2::CaseManagementProjectData.new({
            type: DatadogAPIClient::V2::CaseManagementProjectDataType::PROJECTS,
            id: "959a6f71-bac8-4027-b1d3-2264f569296f",
          }),
        }),
        findings: DatadogAPIClient::V2::Findings.new({
          data: [
            DatadogAPIClient::V2::FindingData.new({
              type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
              id: "OTQ3NjJkMmYwMTIzMzMxNTc1Y2Q4MTA5NWU0NTBmMDl-ZjE3NjMxZWVkYzBjZGI1NDY2NWY2OGQxZDk4MDY4MmI=",
            }),
          ],
        }),
      }),
      id: "53e242c6-a7d6-46ad-9680-b8d14753f716",
    }),
    DatadogAPIClient::V2::CreateCaseRequestData.new({
      type: DatadogAPIClient::V2::CaseDataType::CASES,
      attributes: DatadogAPIClient::V2::CreateCaseRequestDataAttributes.new({
        title: "A title",
        description: "A description",
      }),
      relationships: DatadogAPIClient::V2::CreateCaseRequestDataRelationships.new({
        project: DatadogAPIClient::V2::CaseManagementProject.new({
          data: DatadogAPIClient::V2::CaseManagementProjectData.new({
            type: DatadogAPIClient::V2::CaseManagementProjectDataType::PROJECTS,
            id: "959a6f71-bac8-4027-b1d3-2264f569296f",
          }),
        }),
        findings: DatadogAPIClient::V2::Findings.new({
          data: [
            DatadogAPIClient::V2::FindingData.new({
              type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
              id: "MTNjN2ZmYWMzMDIxYmU1ZDFiZDRjNWUwN2I1NzVmY2F-YTA3MzllMTUzNWM3NmEyZjdiNzEzOWM5YmViZTMzOGM=",
            }),
          ],
        }),
      }),
      id: "195772b2-1f53-41d2-b81e-48c8e6c21d33",
    }),
    DatadogAPIClient::V2::CaseManagementProjectData.new({
      type: DatadogAPIClient::V2::CaseManagementProjectDataType::PROJECTS,
      id: "959a6f71-bac8-4027-b1d3-2264f569296f",
    }),
    DatadogAPIClient::V2::FindingData.new({
      type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
      id: "OTQ3NjJkMmYwMTIzMzMxNTc1Y2Q4MTA5NWU0NTBmMDl-ZjE3NjMxZWVkYzBjZGI1NDY2NWY2OGQxZDk4MDY4MmI=",
    }),
    DatadogAPIClient::V2::FindingData.new({
      type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
      id: "MTNjN2ZmYWMzMDIxYmU1ZDFiZDRjNWUwN2I1NzVmY2F-YTA3MzllMTUzNWM3NmEyZjdiNzEzOWM5YmViZTMzOGM=",
    }),
  ],
})
p api_instance.create_jira_issues(body)
