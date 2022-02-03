require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
metric_id = 'metric_id_example' # String | The name of the log-based metric.

begin
  # Get a log-based metric
  result = api_instance.get_logs_metric(metric_id)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->get_logs_metric: #{e}"
end
