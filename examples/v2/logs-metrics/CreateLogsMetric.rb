# Create a log-based metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new

body = DatadogAPIClient::V2::LogsMetricCreateRequest.new({
  data: DatadogAPIClient::V2::LogsMetricCreateData.new({
    id: "ExampleLogsMetric",
    type: DatadogAPIClient::V2::LogsMetricType::LOGS_METRICS,
    attributes: DatadogAPIClient::V2::LogsMetricCreateAttributes.new({
      compute: DatadogAPIClient::V2::LogsMetricCompute.new({
        aggregation_type: DatadogAPIClient::V2::LogsMetricComputeAggregationType::DISTRIBUTION,
        include_percentiles: true,
        path: "@duration",
      }),
    }),
  }),
})
p api_instance.create_logs_metric(body)
