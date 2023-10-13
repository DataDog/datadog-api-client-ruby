# Get one application key for this service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new

# there is a valid "service_account_user" in the system
SERVICE_ACCOUNT_USER_DATA_ID = ENV["SERVICE_ACCOUNT_USER_DATA_ID"]

# there is a valid "service_account_application_key" for "service_account_user"
SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ID = ENV["SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ID"]
p api_instance.get_service_account_application_key(SERVICE_ACCOUNT_USER_DATA_ID, SERVICE_ACCOUNT_APPLICATION_KEY_DATA_ID)
