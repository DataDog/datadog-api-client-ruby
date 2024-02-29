# Related Assets to a Metric returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_metric_assets("system.cpu.user")
