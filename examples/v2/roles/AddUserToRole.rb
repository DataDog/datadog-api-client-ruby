# Add a user to a role returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RolesAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::RelationshipToUser.new({
  data: DatadogAPIClient::V2::RelationshipToUserData.new({
    id: "f956f0c5-f2e5-43c6-ffd1-1c3624dd28db",
    type: DatadogAPIClient::V2::UsersType::USERS,
  }),
})
p api_instance.add_user_to_role(ROLE_DATA_ID, body)
