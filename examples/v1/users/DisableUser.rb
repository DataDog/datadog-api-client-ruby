# Disable a user returns "User disabled" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new
p api_instance.disable_user("test@datadoghq.com")
