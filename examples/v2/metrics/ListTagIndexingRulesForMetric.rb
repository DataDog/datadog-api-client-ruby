# List tag indexing rules for a metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_tag_indexing_rules_for_metric("ExampleMetric")
