require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new

begin
  # List all Azure integrations
  result = api_instance.list_azure_integration
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->list_azure_integration: #{e}"
end
