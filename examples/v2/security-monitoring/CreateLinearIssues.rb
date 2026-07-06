# Create Linear issues for security findings returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_linear_issues".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateLinearIssueRequestArray.new({
  data: [
    DatadogAPIClient::V2::CreateLinearIssueRequestData.new({
      attributes: DatadogAPIClient::V2::CreateLinearIssueRequestDataAttributes.new({
        assignee_id: "f315bdaf-9ee7-4808-a9c1-99c15bf0f4d0",
        description: "A description of the Linear issue.",
        label_ids: [
          "a1b2c3d4-5e6f-7a8b-9c0d-1e2f3a4b5c6d",
        ],
        linear_project_id: "d4c3b2a1-6f5e-8b7a-0d9c-2f1e4a3b6c5d",
        priority: DatadogAPIClient::V2::CasePriority::NOT_DEFINED,
        title: "A title for the Linear issue.",
      }),
      relationships: DatadogAPIClient::V2::CreateLinearIssueRequestDataRelationships.new({
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
  ],
})
p api_instance.create_linear_issues(body)
