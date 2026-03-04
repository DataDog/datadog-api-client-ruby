# Create maintenance returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID = ENV["STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID"]
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

body = DatadogAPIClient::V2::CreateMaintenanceRequest.new({
  data: DatadogAPIClient::V2::CreateMaintenanceRequestData.new({
    attributes: DatadogAPIClient::V2::CreateMaintenanceRequestDataAttributes.new({
      title: "API Maintenance",
      scheduled_description: "We will be performing maintenance on the API to improve performance.",
      in_progress_description: "We are currently performing maintenance on the API to improve performance.",
      completed_description: "We have completed maintenance on the API to improve performance.",
      start_date: (Time.now + 1 * 3600),
      completed_date: (Time.now + 2 * 3600),
      components_affected: [
        DatadogAPIClient::V2::CreateMaintenanceRequestDataAttributesComponentsAffectedItems.new({
          id: STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID,
          status: DatadogAPIClient::V2::PatchMaintenanceRequestDataAttributesComponentsAffectedItemsStatus::OPERATIONAL,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::PatchMaintenanceRequestDataType::MAINTENANCES,
  }),
})
p api_instance.create_maintenance(STATUS_PAGE_DATA_ID, body)
