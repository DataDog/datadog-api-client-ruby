# Get integration account returns "OK: The account details for the specified integration." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new
p api_instance.get_web_integration_account("integration_name", "account_id")
