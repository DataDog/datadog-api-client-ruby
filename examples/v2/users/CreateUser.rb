# Create a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new

body = DatadogAPIClient::V2::UserCreateRequest.new({
  data: DatadogAPIClient::V2::UserCreateData.new({
    type: DatadogAPIClient::V2::UsersType::USERS,
    attributes: DatadogAPIClient::V2::UserCreateAttributes.new({
      name: "Datadog API Client Python",
      email: "Example-User@datadoghq.com",
    }),
  }),
})
p api_instance.create_user(body)
