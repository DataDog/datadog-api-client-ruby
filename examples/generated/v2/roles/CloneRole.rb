require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = 'role_id_example' # String | The ID of the role.
body = DatadogAPIClient::V2::RoleCloneRequest.new({data: DatadogAPIClient::V2::RoleClone.new({attributes: DatadogAPIClient::V2::RoleCloneAttributes.new({name: 'cloned-role'}), type: DatadogAPIClient::V2::RolesType::ROLES})}) # RoleCloneRequest | 

begin
  # Create a new role by cloning an existing role
  result = api_instance.clone_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->clone_role: #{e}"
end
