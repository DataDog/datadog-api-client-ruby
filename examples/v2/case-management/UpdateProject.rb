# Update a project returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::ProjectUpdateRequest.new({
  data: DatadogAPIClient::V2::ProjectUpdate.new({
    type: DatadogAPIClient::V2::ProjectResourceType::PROJECT,
    attributes: DatadogAPIClient::V2::ProjectUpdateAttributes.new({
      name: "Updated Project Name Example-Case-Management",
    }),
  }),
})
p api_instance.update_project("d4bbe1af-f36e-42f1-87c1-493ca35c320e", body)
