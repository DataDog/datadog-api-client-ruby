# Get one application key for this service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
p api_instance.get_service_account_application_key("00000000-0000-1234-0000-000000000000", "app_key_id")
