# Get Internal Developer Portal configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_idp_config_value".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SoftwareCatalogAPI.new
p api_instance.get_idp_config_value("idp_pinned_dashboards")
