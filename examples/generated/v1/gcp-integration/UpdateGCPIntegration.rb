require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::GCPIntegrationAPI.new
body = DatadogAPIClient::V1::GCPAccount.new # GCPAccount | Update a Datadog-GCP integration.

begin
  # Update a GCP integration
  result = api_instance.update_gcp_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling GCPIntegrationAPI->update_gcp_integration: #{e}"
end
