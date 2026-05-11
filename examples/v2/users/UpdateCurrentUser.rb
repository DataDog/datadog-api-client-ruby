# Update current user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new

body = DatadogAPIClient::V2::UserUpdateRequest.new({
  data: DatadogAPIClient::V2::UserUpdateData.new({
    attributes: DatadogAPIClient::V2::UserUpdateAttributes.new({
      title: nil,
    }),
    id: "00000000-0000-feed-0000-000000000000",
    type: DatadogAPIClient::V2::UsersType::USERS,
  }),
})
p api_instance.update_current_user(body)
