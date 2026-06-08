# Get a tag indexing rule exemption returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.get_tag_indexing_rule_exemption("metric_name")
