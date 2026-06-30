# List tag indexing rules for a metric returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_tag_indexing_rules_for_metric".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.list_tag_indexing_rules_for_metric("ExampleMetric")
