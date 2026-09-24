# Get SBOM returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_sbom(AssetType::REPOSITORY, "github.com/datadog/datadog-agent")
