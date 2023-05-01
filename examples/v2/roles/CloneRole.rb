# Create a new role by cloning an existing role returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

body = DatadogAPIClient::V2::RoleCloneRequest.new({
  data: DatadogAPIClient::V2::RoleClone.new({
    attributes: DatadogAPIClient::V2::RoleCloneAttributes.new({
      name: "Example-Role clone",
    }),
    type: DatadogAPIClient::V2::RolesType::ROLES,
  }),
})
p api_instance.clone_role(ROLE_DATA_ID, body)
