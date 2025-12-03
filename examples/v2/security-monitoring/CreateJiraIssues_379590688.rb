# Create Jira issue for security finding returns "Created" response

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
            id: "6a773295-8729-4034-aada-53b64cbe02e7",
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
              id: "ZGZhMDI3ZjdjMDM3YjJmNzcxNTlhZGMwMjdmZWNiNTZ-MTVlYTNmYWU3NjNlOTNlYTE2YjM4N2JmZmI4Yjk5N2Y=",
            }),
          ],
        }),
      }),
      id: "6a773295-8729-4034-aada-53b64cbe02e7",
    }),
    DatadogAPIClient::V2::CaseManagementProjectData.new({
      type: DatadogAPIClient::V2::CaseManagementProjectDataType::PROJECTS,
      id: "959a6f71-bac8-4027-b1d3-2264f569296f",
    }),
    DatadogAPIClient::V2::FindingData.new({
      type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
      id: "ZGZhMDI3ZjdjMDM3YjJmNzcxNTlhZGMwMjdmZWNiNTZ-MTVlYTNmYWU3NjNlOTNlYTE2YjM4N2JmZmI4Yjk5N2Y=",
    }),
  ],
})
p api_instance.create_jira_issues(body)
