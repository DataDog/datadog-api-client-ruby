require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = "role_id_example" # String | The ID of the role.
body = DatadogAPIClient::V2::RelationshipToUser.new({ data: DatadogAPIClient::V2::RelationshipToUserData.new({ id: "00000000-0000-0000-0000-000000000000", type: DatadogAPIClient::V2::UsersType::USERS }) }) # RelationshipToUser |

begin
  # Remove a user from a role
  result = api_instance.remove_user_from_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->remove_user_from_role: #{e}"
end
