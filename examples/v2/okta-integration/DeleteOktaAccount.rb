# Delete Okta account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OktaIntegrationAPI.new
api_instance.delete_okta_account("account_id")
