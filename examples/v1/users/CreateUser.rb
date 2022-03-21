# Create a user returns "User created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new

body = DatadogAPIClient::V1::User.new({
  access_role: DatadogAPIClient::V1::AccessRole::STANDARD,
  disabled: false,
  email: "test@datadoghq.com",
  handle: "test@datadoghq.com",
  icon: "/path/to/matching/gravatar/icon",
  name: "test user",
  verified: true,
})
p api_instance.create_user(body)
