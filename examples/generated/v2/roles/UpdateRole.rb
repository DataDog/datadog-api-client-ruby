require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = 'role_id_example' # String | The ID of the role.
body = DatadogAPIClient::V2::RoleUpdateRequest.new({data: DatadogAPIClient::V2::RoleUpdateData.new({attributes: DatadogAPIClient::V2::RoleUpdateAttributes.new, id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::RolesType::ROLES})}) # RoleUpdateRequest | 

begin
  # Update a role
  result = api_instance.update_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->update_role: #{e}"
end
