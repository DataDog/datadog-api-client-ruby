require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::AzureIntegrationAPI.new
body = DatadogAPIClient::V1::AzureAccount.new # AzureAccount | Update a Datadog-Azure integration's host filters request body.

begin
  # Update Azure integration host filters
  result = api_instance.update_azure_host_filters(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling AzureIntegrationAPI->update_azure_host_filters: #{e}"
end
