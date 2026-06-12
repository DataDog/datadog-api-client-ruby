# List shared dashboards for a dashboard returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_shared_dashboards_by_dashboard_id".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardSharingAPI.new
p api_instance.list_shared_dashboards_by_dashboard_id("abc-def-ghi")
