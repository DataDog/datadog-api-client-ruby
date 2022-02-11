require "datadog_api_client"
api_instance = DatadogAPIClient::V1::GCPIntegrationAPI.new
body = DatadogAPIClient::V1::GCPAccount.new # GCPAccount | Delete a given Datadog-GCP integration.

begin
  # Delete a GCP integration
  result = api_instance.delete_gcp_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling GCPIntegrationAPI->delete_gcp_integration: #{e}"
end
