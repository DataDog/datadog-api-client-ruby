# Update a role returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

# there is a valid "role" in the system
ROLE_DATA_ATTRIBUTES_NAME = ENV["ROLE_DATA_ATTRIBUTES_NAME"]
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

# there is a valid "permission" in the system
PERMISSION_ID = ENV["PERMISSION_ID"]

body = DatadogAPIClient::V2::RoleUpdateRequest.new({
  data: DatadogAPIClient::V2::RoleUpdateData.new({
    id: ROLE_DATA_ID,
    type: DatadogAPIClient::V2::RolesType::ROLES,
    attributes: DatadogAPIClient::V2::RoleUpdateAttributes.new({
      name: "developers-updated",
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
p api_instance.update_role(ROLE_DATA_ID, body)
