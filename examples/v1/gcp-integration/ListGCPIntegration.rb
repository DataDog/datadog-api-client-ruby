# List all GCP integrations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::GCPIntegrationAPI.new
p api_instance.list_gcp_integration()
