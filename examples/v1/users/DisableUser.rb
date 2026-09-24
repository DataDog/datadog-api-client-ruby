# Disable a user returns "User disabled" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::UsersAPI.new
p api_instance.disable_user("test@datadoghq.com")
