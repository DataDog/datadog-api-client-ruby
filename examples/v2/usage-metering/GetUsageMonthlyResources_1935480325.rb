# Get monthly usage by resource supports non-host resources

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  page_limit: 1,
}
p api_instance.get_usage_monthly_resources("indexed_points", "2026-04", MonthlyResourcesView::ALL, opts)
