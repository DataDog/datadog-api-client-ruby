# List all users returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::UsersAPI.new
p api_instance.list_users()
