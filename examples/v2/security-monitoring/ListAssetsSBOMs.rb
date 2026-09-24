# List assets SBOMs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  filter_package_name: "pandas",
  filter_asset_type: AssetType::SERVICE,
}
p api_instance.list_assets_sbo_ms(opts)
