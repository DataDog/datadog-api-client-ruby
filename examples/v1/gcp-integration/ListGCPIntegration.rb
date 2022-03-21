# List all GCP integrations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::GCPIntegrationAPI.new
p api_instance.list_gcp_integration()
