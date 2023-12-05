# Get Okta account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OktaIntegrationAPI.new

# there is a valid "okta_account" in the system
OKTA_ACCOUNT_DATA_ID = ENV["OKTA_ACCOUNT_DATA_ID"]
p api_instance.get_okta_account(OKTA_ACCOUNT_DATA_ID)
