# List application keys for this service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
p api_instance.list_service_account_application_keys("00000000-0000-1234-0000-000000000000")
