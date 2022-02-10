require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = "role_id_example" # String | The ID of the role.

begin
  # Delete role
  api_instance.delete_role(role_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->delete_role: #{e}"
end
