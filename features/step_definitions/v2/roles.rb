Given('the "user" has the "role"') do
  user = fixtures[:user]
  role = fixtures[:role]

  api_instance = DatadogAPIClient::V2::RolesApi.new api_client

  body = DatadogAPIClient::V2::RelationshipToUser.new
  body.data = DatadogAPIClient::V2::RelationshipToUserData.new
  body.data.id = user.data.id
  body.data.type = user.data.type

  api_instance.add_user_to_role(role.data.id, { body: body })
end

Given('the "permission" is granted to the "role"') do
  permission = fixtures[:permission]
  role = fixtures[:role]

  api_instance = DatadogAPIClient::V2::RolesApi.new api_client

  body = DatadogAPIClient::V2::RelationshipToPermission.new
  body.data = DatadogAPIClient::V2::RelationshipToPermissionData.new
  body.data.id = permission.id
  body.data.type = permission.type

  api_instance.add_permission_to_role(role.data.id, { body: body })
end
