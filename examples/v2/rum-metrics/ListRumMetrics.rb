# Get all rum-based metrics returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumMetricsAPI.new
p api_instance.list_rum_metrics()
