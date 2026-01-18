# Delete integration account returns "OK: The account was successfully deleted." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new
p api_instance.delete_web_integration_account("integration_name", "account_id")
