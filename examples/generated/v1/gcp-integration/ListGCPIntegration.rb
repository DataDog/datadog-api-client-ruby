require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::GCPIntegrationAPI.new

begin
  # List all GCP integrations
  result = api_instance.list_gcp_integration
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling GCPIntegrationAPI->list_gcp_integration: #{e}"
end
