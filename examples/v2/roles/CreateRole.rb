# Create role returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

body = DatadogAPIClient::V2::RoleCreateRequest.new({
  data: DatadogAPIClient::V2::RoleCreateData.new({
    attributes: DatadogAPIClient::V2::RoleCreateAttributes.new({
      name: "developers",
    }),
    relationships: DatadogAPIClient::V2::RoleRelationships.new({
      permissions: DatadogAPIClient::V2::RelationshipToPermissions.new({
        data: [
          DatadogAPIClient::V2::RelationshipToPermissionData.new({
            id: "219",
            type: DatadogAPIClient::V2::PermissionsType::PERMISSIONS,
          }),
        ],
      }),
      users: DatadogAPIClient::V2::RelationshipToUsers.new({
        data: [],
      }),
    }),
    type: DatadogAPIClient::V2::RolesType::ROLES,
  }),
})
p api_instance.create_role(body)
