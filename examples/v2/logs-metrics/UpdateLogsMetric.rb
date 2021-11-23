# Update a log-based metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new

# there is a valid "logs_metric" in the system
LOGS_METRIC_DATA_ATTRIBUTES_FILTER_QUERY = ENV["LOGS_METRIC_DATA_ATTRIBUTES_FILTER_QUERY"]
LOGS_METRIC_DATA_ID = ENV["LOGS_METRIC_DATA_ID"]

body = DatadogAPIClient::V2::LogsMetricUpdateRequest.new({
  data: DatadogAPIClient::V2::LogsMetricUpdateData.new({
    type: DatadogAPIClient::V2::LogsMetricType::LOGS_METRICS,
    attributes: DatadogAPIClient::V2::LogsMetricUpdateAttributes.new({
      filter: DatadogAPIClient::V2::LogsMetricFilter.new({
        query: "service:web* AND @http.status_code:[200 TO 299]-updated",
      }),
    }),
  }),
})
p api_instance.update_logs_metric(LOGS_METRIC_DATA_ID, body)
