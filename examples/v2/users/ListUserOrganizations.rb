# Get a user organization returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
p api_instance.list_user_organizations("00000000-0000-9999-0000-000000000000")
