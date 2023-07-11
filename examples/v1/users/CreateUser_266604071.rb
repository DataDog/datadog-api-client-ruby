# Create a user returns null access role

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new

body = DatadogAPIClient::V1::User.new({
  access_role: nil,
  disabled: false,
  email: "test@datadoghq.com",
  handle: "test@datadoghq.com",
  name: "test user",
})
p api_instance.create_user(body)
