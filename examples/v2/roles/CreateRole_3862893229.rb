# Create role with a permission returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

body = DatadogAPIClient::V2::RoleCreateRequest.new({
  data: DatadogAPIClient::V2::RoleCreateData.new({
    type: DatadogAPIClient::V2::RolesType::ROLES,
    attributes: DatadogAPIClient::V2::RoleCreateAttributes.new({
      name: "Example-Role",
    }),
    relationships: DatadogAPIClient::V2::RoleRelationships.new({
      permissions: DatadogAPIClient::V2::RelationshipToPermissions.new({
        data: [
          DatadogAPIClient::V2::RelationshipToPermissionData.new({
            id: "d90f6831-d3d8-11e9-a77a-4fd230ddbc6a",
            type: DatadogAPIClient::V2::PermissionsType::PERMISSIONS,
          }),
        ],
      }),
    }),
  }),
})
p api_instance.create_role(body)
