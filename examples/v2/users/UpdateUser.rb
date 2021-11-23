# Update a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::UserUpdateRequest.new({
  data: DatadogAPIClient::V2::UserUpdateData.new({
    id: USER_DATA_ID,
    type: DatadogAPIClient::V2::UsersType::USERS,
    attributes: DatadogAPIClient::V2::UserUpdateAttributes.new({
      name: "updated",
      disabled: true,
    }),
  }),
})
p api_instance.update_user(USER_DATA_ID, body)
