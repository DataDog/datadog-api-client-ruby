require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = 'role_id_example' # String | The ID of the role.

begin
  # List permissions for a role
  result = api_instance.list_role_permissions(role_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->list_role_permissions: #{e}"
end
