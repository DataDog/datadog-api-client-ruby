# Get usage attribution returns "OK" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:get_usage_attribution] = true
end
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  offset: 0,
  limit: 1,
}
p api_instance.get_usage_attribution((Time.now + -3 * 86400), UsageAttributionSupportedMetrics::ALL, opts)
