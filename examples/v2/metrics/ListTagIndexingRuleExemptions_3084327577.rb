# List tag indexing rule exemptions returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_tag_indexing_rule_exemptions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
api_instance.list_tag_indexing_rule_exemptions_with_pagination() { |item| puts item }
