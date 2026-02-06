# Search dashboards returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_dashboards".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardsAPI.new
p api_instance.search_dashboards()
