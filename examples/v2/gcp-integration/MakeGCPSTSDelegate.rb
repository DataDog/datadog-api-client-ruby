# Create a Datadog GCP principal returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new
p api_instance.make_gcpsts_delegate()
