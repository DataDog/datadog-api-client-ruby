# List application keys for this service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

# there is a valid "service_account_user" in the system
SERVICE_ACCOUNT_USER_DATA_ID = ENV["SERVICE_ACCOUNT_USER_DATA_ID"]
p api_instance.list_service_account_application_keys(SERVICE_ACCOUNT_USER_DATA_ID)
