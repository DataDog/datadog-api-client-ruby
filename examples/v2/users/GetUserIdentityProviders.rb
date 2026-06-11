# Get identity provider overrides for a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
p api_instance.get_user_identity_providers("00000000-0000-9999-0000-000000000000")
