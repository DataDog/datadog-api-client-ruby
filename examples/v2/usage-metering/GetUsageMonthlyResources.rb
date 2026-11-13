# Get monthly usage by resource returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new
opts = {
  page_limit: 1,
}
p api_instance.get_usage_monthly_resources("infra_host", "2026-04", MonthlyResourcesView::ALL, opts)
