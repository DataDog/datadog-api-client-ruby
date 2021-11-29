# Remove a user from a role returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::RelationshipToUser.new({
  data: DatadogAPIClient::V2::RelationshipToUserData.new({
    id: "25e1cca9-a581-7338-85e4-f9d1635bbccc",
    type: DatadogAPIClient::V2::UsersType::USERS,
  }),
})
p api_instance.remove_user_from_role(ROLE_DATA_ID, body)
