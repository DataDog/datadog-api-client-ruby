# Create a maintenance window returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::MaintenanceWindowCreateRequest.new({
  data: DatadogAPIClient::V2::MaintenanceWindowCreate.new({
    attributes: DatadogAPIClient::V2::MaintenanceWindowCreateAttributes.new({
      end_at: "2026-06-01T06:00:00Z",
      name: "Weekly maintenance",
      query: "project:SEC",
      start_at: "2026-06-01T00:00:00Z",
    }),
    type: DatadogAPIClient::V2::MaintenanceWindowResourceType::MAINTENANCE_WINDOW,
  }),
})
p api_instance.create_maintenance_window(body)
