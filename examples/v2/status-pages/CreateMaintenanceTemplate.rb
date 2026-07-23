# Create maintenance template returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatusPagesAPI.new

body = DatadogAPIClient::V2::CreateMaintenanceTemplateRequest.new({
  data: DatadogAPIClient::V2::CreateMaintenanceTemplateRequestData.new({
    attributes: DatadogAPIClient::V2::CreateMaintenanceTemplateRequestDataAttributes.new({
      component_ids: [],
      name: "",
    }),
    type: DatadogAPIClient::V2::PatchMaintenanceTemplateRequestDataType::MAINTENANCE_TEMPLATES,
  }),
})
p api_instance.create_maintenance_template("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
