# Delete an application key for this service account returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceAccountsAPI.new
api_instance.delete_service_account_application_key("00000000-0000-1234-0000-000000000000", "app_key_id")
