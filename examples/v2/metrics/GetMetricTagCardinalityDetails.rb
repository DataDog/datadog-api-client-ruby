# Get tag key cardinality details returns "Success" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.get_metric_tag_cardinality_details("metric_name")
