# Get all dashboards returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
opts = {
  count: 2,
}
api_instance.list_dashboards_with_pagination(opts) { |item| puts item }
