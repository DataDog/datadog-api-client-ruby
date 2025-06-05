# List findings returns "OK" response with details

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_findings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  detailed_findings: true,
}
p api_instance.list_findings(opts)
