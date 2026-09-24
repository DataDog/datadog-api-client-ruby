# Get monthly usage attribution returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
p api_instance.get_monthly_usage_attribution((Time.now + -3 * 86400), MonthlyUsageAttributionSupportedMetrics::INFRA_HOST_USAGE)
