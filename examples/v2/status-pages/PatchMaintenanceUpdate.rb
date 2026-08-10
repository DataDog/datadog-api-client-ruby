# Edit maintenance update returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

body = DatadogAPIClient::V2::PatchMaintenanceUpdateRequest.new({
  data: DatadogAPIClient::V2::PatchMaintenanceUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::PatchMaintenanceUpdateRequestDataAttributes.new({
      description: "We have completed maintenance on the API to improve performance.",
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::PatchMaintenanceUpdateRequestDataType::MAINTENANCE_UPDATES,
  }),
})
p api_instance.patch_maintenance_update("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
