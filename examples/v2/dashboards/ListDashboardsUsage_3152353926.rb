# Get usage stats for all dashboards returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_dashboards_usage".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardsAPI.new
opts = {
  page_limit: 500,
}
api_instance.list_dashboards_usage_with_pagination(opts) { |item| puts item }
