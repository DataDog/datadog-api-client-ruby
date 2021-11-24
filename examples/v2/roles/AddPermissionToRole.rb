# Grant permission to a role returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

# there is a valid "permission" in the system
PERMISSION_ID = ENV["PERMISSION_ID"]

body = DatadogAPIClient::V2::RelationshipToPermission.new({
  data: DatadogAPIClient::V2::RelationshipToPermissionData.new({
    id: PERMISSION_ID,
    type: DatadogAPIClient::V2::PermissionsType::PERMISSIONS,
  }),
})
p api_instance.add_permission_to_role(ROLE_DATA_ID, body)
