require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Create a Datadog-Azure integration for your Datadog account request body.

begin
  # Create an Azure integration
  result = api_instance.create_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->create_azure_integration: #{e}"
end
