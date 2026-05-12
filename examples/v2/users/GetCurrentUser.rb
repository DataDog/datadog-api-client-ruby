# Get current user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
p api_instance.get_current_user()
