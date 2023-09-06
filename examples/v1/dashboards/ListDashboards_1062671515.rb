# Get all dashboards returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
opts = {
  count: 2,
}
api_instance.list_dashboards_with_pagination(opts) { |item| puts item }
