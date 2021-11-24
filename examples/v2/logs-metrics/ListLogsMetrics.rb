# Get all log-based metrics returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new
p api_instance.list_logs_metrics()
