require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = "role_id_example" # String | The ID of the role.
body = DatadogAPIClient::V2::RelationshipToPermission.new # RelationshipToPermission |

begin
  # Grant permission to a role
  result = api_instance.add_permission_to_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->add_permission_to_role: #{e}"
end
