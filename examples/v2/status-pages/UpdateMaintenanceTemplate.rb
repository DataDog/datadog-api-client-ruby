# Update maintenance template returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

body = DatadogAPIClient::V2::PatchMaintenanceTemplateRequest.new({
  data: DatadogAPIClient::V2::PatchMaintenanceTemplateRequestData.new({
    attributes: DatadogAPIClient::V2::PatchMaintenanceTemplateRequestDataAttributes.new({
      component_ids: [],
    }),
    id: "",
    type: DatadogAPIClient::V2::PatchMaintenanceTemplateRequestDataType::MAINTENANCE_TEMPLATES,
  }),
})
p api_instance.update_maintenance_template("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
