require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new

begin
  # Get all log-based metrics
  result = api_instance.list_logs_metrics
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling LogsMetricsAPI->list_logs_metrics: #{e}"
end
