# Get all span-based metrics returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SpansMetricsAPI.new
p api_instance.list_spans_metrics()
