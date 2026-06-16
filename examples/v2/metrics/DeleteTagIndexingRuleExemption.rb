# Delete a tag indexing rule exemption returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_tag_indexing_rule_exemption".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
api_instance.delete_tag_indexing_rule_exemption("metric_name")
