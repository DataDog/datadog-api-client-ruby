# List findings with detection_type query param returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_findings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  filter_vulnerability_type: [
    FindingVulnerabilityType::MISCONFIGURATION,
    FindingVulnerabilityType::ATTACK_PATH,
  ],
}
p api_instance.list_findings(opts)
