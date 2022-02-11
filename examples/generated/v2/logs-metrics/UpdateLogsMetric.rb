require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
metric_id = "metric_id_example" # String | The name of the log-based metric.
body = DatadogAPIClient::V2::LogsMetricUpdateRequest.new({ data: DatadogAPIClient::V2::LogsMetricUpdateData.new({ attributes: DatadogAPIClient::V2::LogsMetricUpdateAttributes.new, type: DatadogAPIClient::V2::LogsMetricType::LOGS_METRICS }) }) # LogsMetricUpdateRequest | New definition of the log-based metric.

begin
  # Update a log-based metric
  result = api_instance.update_logs_metric(metric_id, body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->update_logs_metric: #{e}"
end
