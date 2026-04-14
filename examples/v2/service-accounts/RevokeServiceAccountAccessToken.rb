# Revoke an access token for a service account returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

# there is a valid "service_account_user" in the system
SERVICE_ACCOUNT_USER_DATA_ID = ENV["SERVICE_ACCOUNT_USER_DATA_ID"]

# there is a valid "service_account_access_token" for "service_account_user"
SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ID = ENV["SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ID"]
api_instance.revoke_service_account_access_token(SERVICE_ACCOUNT_USER_DATA_ID, SERVICE_ACCOUNT_ACCESS_TOKEN_DATA_ID)
