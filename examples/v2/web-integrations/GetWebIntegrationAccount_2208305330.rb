# Get integration account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new

# there is a valid "web_integration_account" in the system
WEB_INTEGRATION_ACCOUNT_DATA_ID = ENV["WEB_INTEGRATION_ACCOUNT_DATA_ID"]
p api_instance.get_web_integration_account("twilio", WEB_INTEGRATION_ACCOUNT_DATA_ID)
