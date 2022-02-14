require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = "role_id_example" # String | The ID of the role.
body = DatadogAPIClient::V2::RelationshipToPermission.new # RelationshipToPermission |

begin
  # Revoke permission
  result = api_instance.remove_permission_from_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->remove_permission_from_role: #{e}"
end
