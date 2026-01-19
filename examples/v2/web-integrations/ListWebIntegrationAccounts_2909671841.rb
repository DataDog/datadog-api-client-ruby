# List integration accounts returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new
p api_instance.list_web_integration_accounts("twilio")
