# Create a project returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CaseManagementAPI.new

body = DatadogAPIClient::V2::ProjectCreateRequest.new({
  data: DatadogAPIClient::V2::ProjectCreate.new({
    attributes: DatadogAPIClient::V2::ProjectCreateAttributes.new({
      key: "SEC",
      name: "Security Investigation",
    }),
    type: DatadogAPIClient::V2::ProjectResourceType::PROJECT,
  }),
})
p api_instance.create_project(body)
