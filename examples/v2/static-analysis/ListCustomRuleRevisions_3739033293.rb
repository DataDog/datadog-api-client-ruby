# List Custom Rule Revisions returns "Successful response" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_custom_rule_revisions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new
api_instance.list_custom_rule_revisions_with_pagination("ruleset_name", "rule_name") { |item| puts item }
