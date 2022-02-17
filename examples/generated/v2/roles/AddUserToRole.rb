require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new
role_id = "role_id_example" # String | The ID of the role.
body = DatadogAPIClient::V2::RelationshipToUser.new({ data: DatadogAPIClient::V2::RelationshipToUserData.new({ id: "00000000-0000-0000-2345-000000000000", type: DatadogAPIClient::V2::UsersType::USERS }) }) # RelationshipToUser |

begin
  # Add a user to a role
  result = api_instance.add_user_to_role(role_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling RolesAPI->add_user_to_role: #{e}"
end
