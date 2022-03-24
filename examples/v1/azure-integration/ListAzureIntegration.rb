# List all Azure integrations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
p api_instance.list_azure_integration()
