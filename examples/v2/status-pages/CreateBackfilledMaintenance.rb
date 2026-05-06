# Create backfilled maintenance returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID = ENV["STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID"]
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

body = DatadogAPIClient::V2::CreateBackfilledMaintenanceRequest.new({
  data: DatadogAPIClient::V2::CreateBackfilledMaintenanceRequestData.new({
    attributes: DatadogAPIClient::V2::CreateBackfilledMaintenanceRequestDataAttributes.new({
      title: "Past Database Maintenance",
      updates: [
        DatadogAPIClient::V2::CreateBackfilledMaintenanceRequestDataAttributesUpdatesItems.new({
          components_affected: [
            DatadogAPIClient::V2::CreateMaintenanceRequestDataAttributesComponentsAffectedItems.new({
              id: STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID,
              status: DatadogAPIClient::V2::PatchMaintenanceRequestDataAttributesComponentsAffectedItemsStatus::MAINTENANCE,
            }),
          ],
          description: "Database maintenance is in progress.",
          started_at: (Time.now + -1 * 3600),
          status: DatadogAPIClient::V2::CreateBackfilledMaintenanceRequestDataAttributesUpdatesItemsStatus::IN_PROGRESS,
        }),
        DatadogAPIClient::V2::CreateBackfilledMaintenanceRequestDataAttributesUpdatesItems.new({
          components_affected: [
            DatadogAPIClient::V2::CreateMaintenanceRequestDataAttributesComponentsAffectedItems.new({
              id: STATUS_PAGE_DATA_ATTRIBUTES_COMPONENTS_0_COMPONENTS_0_ID,
              status: DatadogAPIClient::V2::PatchMaintenanceRequestDataAttributesComponentsAffectedItemsStatus::OPERATIONAL,
            }),
          ],
          description: "Database maintenance has been completed successfully.",
          started_at: Time.now,
          status: DatadogAPIClient::V2::CreateBackfilledMaintenanceRequestDataAttributesUpdatesItemsStatus::COMPLETED,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::PatchMaintenanceRequestDataType::MAINTENANCES,
  }),
})
p api_instance.create_backfilled_maintenance(STATUS_PAGE_DATA_ID, body)
