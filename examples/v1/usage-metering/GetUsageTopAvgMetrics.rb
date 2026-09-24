# Get all custom metrics by hourly average returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::UsageMeteringAPI.new
opts = {
  day: (Time.now + -3 * 86400),
}
p api_instance.get_usage_top_avg_metrics(opts)
