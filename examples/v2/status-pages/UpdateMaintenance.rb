# Update maintenance returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

# there is a valid "status_page" in the system
STATUS_PAGE_DATA_ID = ENV["STATUS_PAGE_DATA_ID"]

# there is a valid "maintenance" in the system
MAINTENANCE_DATA_ID = ENV["MAINTENANCE_DATA_ID"]

body = DatadogAPIClient::V2::PatchMaintenanceRequest.new({
  data: DatadogAPIClient::V2::PatchMaintenanceRequestData.new({
    attributes: DatadogAPIClient::V2::PatchMaintenanceRequestDataAttributes.new({
      scheduled_description: "We will be performing maintenance on the API to improve performance for 40 minutes.",
      in_progress_description: "We are currently performing maintenance on the API to improve performance for 40 minutes.",
    }),
    id: MAINTENANCE_DATA_ID,
    type: DatadogAPIClient::V2::PatchMaintenanceRequestDataType::MAINTENANCES,
  }),
})
p api_instance.update_maintenance(STATUS_PAGE_DATA_ID, MAINTENANCE_DATA_ID, body)
