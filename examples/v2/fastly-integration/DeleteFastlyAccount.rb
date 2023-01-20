# Delete Fastly account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FastlyIntegrationAPI.new
api_instance.delete_fastly_account("account_id")
