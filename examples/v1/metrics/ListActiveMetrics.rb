# Get active metrics list returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MetricsAPI.new
p api_instance.list_active_metrics(9223372036854775807)
