require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Update a Datadog-Azure integration request body.

begin
  # Update an Azure integration
  result = api_instance.update_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->update_azure_integration: #{e}"
end
