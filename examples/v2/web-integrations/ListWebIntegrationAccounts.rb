# List integration accounts returns "OK: List of all accounts for the specified integration." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new
p api_instance.list_web_integration_accounts("integration_name")
