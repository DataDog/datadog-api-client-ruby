# List all GCP STS-enabled service accounts returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new
p api_instance.list_gcpsts_accounts()
