# Schedule maintenance returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

body = DatadogAPIClient::V2::CreateMaintenanceRequest.new({
  data: DatadogAPIClient::V2::CreateMaintenanceRequestData.new({
    attributes: DatadogAPIClient::V2::CreateMaintenanceRequestDataAttributes.new({
      completed_date: "2026-02-18T19:51:13.332360075Z",
      completed_description: "We have completed maintenance on the API to improve performance.",
      components_affected: [
        DatadogAPIClient::V2::CreateMaintenanceRequestDataAttributesComponentsAffectedItems.new({
          id: "1234abcd-12ab-34cd-56ef-123456abcdef",
          status: DatadogAPIClient::V2::PatchMaintenanceRequestDataAttributesComponentsAffectedItemsStatus::OPERATIONAL,
        }),
      ],
      in_progress_description: "We are currently performing maintenance on the API to improve performance.",
      scheduled_description: "We will be performing maintenance on the API to improve performance.",
      start_date: "2026-02-18T19:21:13.332360075Z",
      title: "API Maintenance",
    }),
    type: DatadogAPIClient::V2::PatchMaintenanceRequestDataType::MAINTENANCES,
  }),
})
p api_instance.create_maintenance("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
