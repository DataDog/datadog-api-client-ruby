# Get GCP scan options returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
p api_instance.get_gcp_scan_options("api-spec-test")
