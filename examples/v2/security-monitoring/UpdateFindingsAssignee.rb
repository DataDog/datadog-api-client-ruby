# Assign or unassign security findings returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_findings_assignee".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::AssigneeRequest.new({
  data: DatadogAPIClient::V2::AssigneeRequestData.new({
    attributes: DatadogAPIClient::V2::AssigneeRequestDataAttributes.new({
      assignee_id: "f315bdaf-9ee7-4808-a9c1-99c15bf0f4d0",
    }),
    id: "00000000-0000-0000-0000-000000000001",
    relationships: DatadogAPIClient::V2::AssigneeRequestDataRelationships.new({
      findings: DatadogAPIClient::V2::Findings.new({
        data: [
          DatadogAPIClient::V2::FindingData.new({
            id: "ZGVmLTAwcC1pZXJ-aS0wZjhjNjMyZDNmMzRlZTgzNw==",
            type: DatadogAPIClient::V2::FindingDataType::FINDINGS,
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::AssigneeDataType::ASSIGNEE,
  }),
})
p api_instance.update_findings_assignee(body)
