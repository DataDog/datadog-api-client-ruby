# Delete a web integration account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new
api_instance.delete_web_integration_account("integration_name", "account_id")
