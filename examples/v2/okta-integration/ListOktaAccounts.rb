# List Okta accounts returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OktaIntegrationAPI.new
p api_instance.list_okta_accounts()
