# Get user details returns "OK for get user" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new
p api_instance.get_user("test@datadoghq.com")
