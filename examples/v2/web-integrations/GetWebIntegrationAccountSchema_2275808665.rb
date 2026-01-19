# Get account schema for an integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WebIntegrationsAPI.new
p api_instance.get_web_integration_account_schema("twilio")
