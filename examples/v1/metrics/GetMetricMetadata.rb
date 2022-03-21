# Get metric metadata returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new
p api_instance.get_metric_metadata("metric_name")
