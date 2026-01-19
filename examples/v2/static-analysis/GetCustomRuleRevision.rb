# Show Custom Rule Revision returns "Successful response" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_custom_rule_revision".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new
p api_instance.get_custom_rule_revision("ruleset_name", "rule_name", "id")
