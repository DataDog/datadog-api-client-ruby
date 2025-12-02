# Create Jira issue for security findings returns "Created" response

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
            id: "e469ceda-957a-4557-a607-9ff25032e9ca",
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
              id: "MzUxMDI4OWYyYWEyODRhYjQ0Zjg2YjY2ZTFmNjRjYzd-NDU2OWQyNTk1MjM5OGI2NzJjMTVhYjhiODY1ZDcwZWY=",
            }),
            DatadogAPIClient::V2::FindingData.new({
              type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
              id: "ZjE2ZGI5YjdmYTQyYzhhMDQ3Nzc3YjM1NGQ2Y2NmZTd-NDU2OWQyNTk1MjM5OGI2NzJjMTVhYjhiODY1ZDcwZWY=",
            }),
          ],
        }),
      }),
      id: "e469ceda-957a-4557-a607-9ff25032e9ca",
    }),
    DatadogAPIClient::V2::CaseManagementProjectData.new({
      type: DatadogAPIClient::V2::CaseManagementProjectDataType::PROJECTS,
      id: "959a6f71-bac8-4027-b1d3-2264f569296f",
    }),
    DatadogAPIClient::V2::FindingData.new({
      type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
      id: "MzUxMDI4OWYyYWEyODRhYjQ0Zjg2YjY2ZTFmNjRjYzd-NDU2OWQyNTk1MjM5OGI2NzJjMTVhYjhiODY1ZDcwZWY=",
    }),
    DatadogAPIClient::V2::FindingData.new({
      type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
      id: "ZjE2ZGI5YjdmYTQyYzhhMDQ3Nzc3YjM1NGQ2Y2NmZTd-NDU2OWQyNTk1MjM5OGI2NzJjMTVhYjhiODY1ZDcwZWY=",
    }),
  ],
})
p api_instance.create_jira_issues(body)
