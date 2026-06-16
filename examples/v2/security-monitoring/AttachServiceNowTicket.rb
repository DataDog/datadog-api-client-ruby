# Attach security findings to a ServiceNow ticket returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.attach_service_now_ticket".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::AttachServiceNowTicketRequest.new({
  data: DatadogAPIClient::V2::AttachServiceNowTicketRequestData.new({
    attributes: DatadogAPIClient::V2::AttachServiceNowTicketRequestDataAttributes.new({
      servicenow_ticket_url: "https://example.service-now.com/now/nav/ui/classic/params/target/incident.do?sys_id=abcdef0123456789abcdef0123456789",
    }),
    relationships: DatadogAPIClient::V2::AttachServiceNowTicketRequestDataRelationships.new({
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
})
p api_instance.attach_service_now_ticket(body)
