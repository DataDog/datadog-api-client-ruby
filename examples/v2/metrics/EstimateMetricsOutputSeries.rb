# Tag Configuration Cardinality Estimator returns "Success" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_groups: "app,host",
  filter_num_aggregations: 4,
}
p api_instance.estimate_metrics_output_series("system.cpu.idle", opts)
