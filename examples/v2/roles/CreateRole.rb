# Create role returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

body = DatadogAPIClient::V2::RoleCreateRequest.new({
  data: DatadogAPIClient::V2::RoleCreateData.new({
    type: DatadogAPIClient::V2::RolesType::ROLES,
    attributes: DatadogAPIClient::V2::RoleCreateAttributes.new({
      name: "Example-Role",
    }),
  }),
})
p api_instance.create_role(body)
