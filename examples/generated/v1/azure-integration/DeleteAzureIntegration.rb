require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Delete a given Datadog-Azure integration request body.

begin
  # Delete an Azure integration
  result = api_instance.delete_azure_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->delete_azure_integration: #{e}"
end
