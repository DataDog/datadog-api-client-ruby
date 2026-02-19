# Create a change request returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_change_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ChangeManagementAPI.new

body = DatadogAPIClient::V2::ChangeRequestCreateRequest.new({
  data: DatadogAPIClient::V2::ChangeRequestCreateData.new({
    attributes: DatadogAPIClient::V2::ChangeRequestCreateAttributes.new({
      change_request_linked_incident_uuid: "00000000-0000-0000-0000-000000000000",
      change_request_maintenance_window_query: "",
      change_request_plan: "1. Deploy to staging 2. Run tests 3. Deploy to production",
      change_request_risk: DatadogAPIClient::V2::ChangeRequestRiskLevel::LOW,
      change_request_type: DatadogAPIClient::V2::ChangeRequestChangeType::NORMAL,
      description: "Deploying new payment service v2.1",
      end_date: "2024-01-02T15:00:00Z",
      project_id: "d4bbe1af-f36e-42f1-87c1-493ca35c320e",
      requested_teams: [
        "team-handle-1",
      ],
      start_date: "2024-01-01T03:00:00Z",
      title: "Deploy new payment service",
    }),
    type: DatadogAPIClient::V2::ChangeRequestResourceType::CHANGE_REQUEST,
  }),
})
p api_instance.create_change_request(body)
