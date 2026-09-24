# Update a user returns "User updated" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::UsersAPI.new

body = DatadogAPIClient::V1::User.new({
  access_role: DatadogAPIClient::V1::AccessRole::READ_ONLY,
  disabled: false,
  email: "test@datadoghq.com",
  handle: "test@datadoghq.com",
  name: "test user",
})
p api_instance.update_user("test@datadoghq.com", body)
