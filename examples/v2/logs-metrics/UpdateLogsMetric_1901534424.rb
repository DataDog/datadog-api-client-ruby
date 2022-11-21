# Update a log-based metric with include_percentiles field returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new

# there is a valid "logs_metric_percentile" in the system
LOGS_METRIC_PERCENTILE_DATA_ID = ENV["LOGS_METRIC_PERCENTILE_DATA_ID"]

body = DatadogAPIClient::V2::LogsMetricUpdateRequest.new({
  data: DatadogAPIClient::V2::LogsMetricUpdateData.new({
    type: DatadogAPIClient::V2::LogsMetricType::LOGS_METRICS,
    attributes: DatadogAPIClient::V2::LogsMetricUpdateAttributes.new({
      compute: DatadogAPIClient::V2::LogsMetricUpdateCompute.new({
        include_percentiles: false,
      }),
    }),
  }),
})
p api_instance.update_logs_metric(LOGS_METRIC_PERCENTILE_DATA_ID, body)
