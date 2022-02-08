require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = "role_id_example" # String | The ID of the role.

begin
  # Get a role
  result = api_instance.get_role(role_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->get_role: #{e}"
end
