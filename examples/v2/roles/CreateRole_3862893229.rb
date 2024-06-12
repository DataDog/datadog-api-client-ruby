# Create role with a permission returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

# there is a valid "permission" in the system
PERMISSION_ID = ENV["PERMISSION_ID"]

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
            id: PERMISSION_ID,
            type: DatadogAPIClient::V2::PermissionsType::PERMISSIONS,
          }),
        ],
      }),
    }),
  }),
})
p api_instance.create_role(body)
