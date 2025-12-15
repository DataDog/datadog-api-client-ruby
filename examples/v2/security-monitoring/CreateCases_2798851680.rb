# Create case for security findings returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateCaseRequestArray.new({
  data: [
    DatadogAPIClient::V2::CreateCaseRequestData.new({
      attributes: DatadogAPIClient::V2::CreateCaseRequestDataAttributes.new({
        title: "A title",
        description: "A description",
      }),
      relationships: DatadogAPIClient::V2::CreateCaseRequestDataRelationships.new({
        findings: DatadogAPIClient::V2::Findings.new({
          data: [
            DatadogAPIClient::V2::FindingData.new({
              id: "ZTd5LWNuYi1seWV-aS0wMjI2NGZjZjRmZWQ5ODMyMg==",
              type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
            }),
            DatadogAPIClient::V2::FindingData.new({
              id: "c2FuLXhyaS1kZnN-aS0wODM3MjVhMTM2MDExNzNkOQ==",
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
      type: DatadogAPIClient::V2::CaseDataType::CASES,
    }),
  ],
})
p api_instance.create_cases(body)
