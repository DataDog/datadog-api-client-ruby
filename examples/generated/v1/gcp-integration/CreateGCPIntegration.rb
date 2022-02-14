require "datadog_api_client"
api_instance = DatadogAPIClient::V1::GCPIntegrationAPI.new
body = DatadogAPIClient::V1::GCPAccount.new # GCPAccount | Create a Datadog-GCP integration.

begin
  # Create a GCP integration
  result = api_instance.create_gcp_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling GCPIntegrationAPI->create_gcp_integration: #{e}"
end
