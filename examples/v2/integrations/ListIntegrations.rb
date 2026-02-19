# List Integrations returns "Successful Response." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::IntegrationsAPI.new
p api_instance.list_integrations()
