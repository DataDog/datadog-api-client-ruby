# Create ServiceNow tickets for security findings returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateServiceNowTicketRequestArray.new({
  data: [
    DatadogAPIClient::V2::CreateServiceNowTicketRequestData.new({
      attributes: DatadogAPIClient::V2::CreateServiceNowTicketRequestDataAttributes.new({
        assignee_id: "f315bdaf-9ee7-4808-a9c1-99c15bf0f4d0",
        description: "A description of the ServiceNow ticket.",
        priority: DatadogAPIClient::V2::CasePriority::NOT_DEFINED,
        title: "A title for the ServiceNow ticket.",
      }),
      relationships: DatadogAPIClient::V2::CreateServiceNowTicketRequestDataRelationships.new({
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
      type: DatadogAPIClient::V2::ServiceNowTicketsDataType::SERVICENOW_TICKETS,
    }),
  ],
})
p api_instance.create_service_now_tickets(body)
