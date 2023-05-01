# Get Fastly account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FastlyIntegrationAPI.new

# there is a valid "fastly_account" in the system
FASTLY_ACCOUNT_DATA_ID = ENV["FASTLY_ACCOUNT_DATA_ID"]
p api_instance.get_fastly_account(FASTLY_ACCOUNT_DATA_ID)
