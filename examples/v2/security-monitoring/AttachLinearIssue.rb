# Attach security findings to a Linear issue returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::AttachLinearIssueRequest.new({
  data: DatadogAPIClient::V2::AttachLinearIssueRequestData.new({
    attributes: DatadogAPIClient::V2::AttachLinearIssueRequestDataAttributes.new({
      linear_issue_url: "https://linear.app/your-workspace/issue/ENG-123",
    }),
    relationships: DatadogAPIClient::V2::AttachLinearIssueRequestDataRelationships.new({
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
    type: DatadogAPIClient::V2::LinearIssuesDataType::LINEAR_ISSUES,
  }),
})
p api_instance.attach_linear_issue(body)
