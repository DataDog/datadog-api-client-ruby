# Get usage stats for all dashboards with edited_before filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_dashboards_usage".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardsAPI.new
opts = {
  filter_edited_before: "2025-04-26T00:00:00Z",
}
p api_instance.list_dashboards_usage(opts)
