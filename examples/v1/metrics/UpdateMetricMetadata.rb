# Edit metric metadata returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::MetricsAPI.new

body = DatadogAPIClient::V1::MetricMetadata.new({
  per_unit: "second",
  type: "count",
  unit: "byte",
})
p api_instance.update_metric_metadata("metric_name", body)
