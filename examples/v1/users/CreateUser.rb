# Create a user returns "User created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new

body = DatadogAPIClient::V1::User.new({
  access_role: DatadogAPIClient::V1::AccessRole::READ_ONLY,
  disabled: false,
  email: "test@datadoghq.com",
  handle: "test@datadoghq.com",
  name: "test user",
})
p api_instance.create_user(body)
