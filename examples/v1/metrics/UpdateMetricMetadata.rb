# Edit metric metadata returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::MetricsAPI.new

body = DatadogAPIClient::V1::MetricMetadata.new({
  description: "Number of requests received.",
  per_unit: "second",
  short_name: "requests",
  statsd_interval: 10,
  type: "count",
  unit: "byte",
})
p api_instance.update_metric_metadata("metric_name", body)
