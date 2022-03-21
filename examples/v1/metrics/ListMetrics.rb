# Search metrics returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new
p api_instance.list_metrics("q")
