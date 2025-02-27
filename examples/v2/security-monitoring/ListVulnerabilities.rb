# List vulnerabilities returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_vulnerabilities".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  filter_cvss_base_severity: VulnerabilitySeverity::HIGH,
  filter_asset_type: AssetType::SERVICE,
  filter_tool: VulnerabilityTool::INFRA,
}
p api_instance.list_vulnerabilities(opts)
