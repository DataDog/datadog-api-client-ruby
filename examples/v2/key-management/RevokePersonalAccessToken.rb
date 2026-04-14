# Revoke a personal access token returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

# there is a valid "personal_access_token" in the system
PERSONAL_ACCESS_TOKEN_DATA_ID = ENV["PERSONAL_ACCESS_TOKEN_DATA_ID"]
api_instance.revoke_personal_access_token(PERSONAL_ACCESS_TOKEN_DATA_ID)
