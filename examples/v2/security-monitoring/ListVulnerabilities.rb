# List vulnerabilities returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_vulnerabilities".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  filter_type: VulnerabilityType::COMMANDINJECTION,
  filter_asset_repository_url: "github.com/datadog/dd-go",
  filter_tool: Tool::IAST,
}
p api_instance.list_vulnerabilities(opts)
