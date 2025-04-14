# Tag Configuration Cardinality Estimator returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
opts = {
  filter_groups: "app,host",
}
p api_instance.estimate_metrics_output_series("system.cpu.idle", opts)
