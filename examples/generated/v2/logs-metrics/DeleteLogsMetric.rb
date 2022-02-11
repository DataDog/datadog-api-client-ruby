require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
metric_id = "metric_id_example" # String | The name of the log-based metric.

begin
  # Delete a log-based metric
  api_instance.delete_logs_metric(metric_id)
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->delete_logs_metric: #{e}"
end
