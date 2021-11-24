# Get a log-based metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsMetricsAPI.new

# there is a valid "logs_metric" in the system
LOGS_METRIC_DATA_ID = ENV["LOGS_METRIC_DATA_ID"]
p api_instance.get_logs_metric(LOGS_METRIC_DATA_ID)
