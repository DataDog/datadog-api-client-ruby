# List vulnerable assets returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_vulnerable_assets".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  filter_type: AssetType::HOST,
  filter_repository_url: "github.com/datadog/dd-go",
  filter_risks_in_production: true,
}
p api_instance.list_vulnerable_assets(opts)
