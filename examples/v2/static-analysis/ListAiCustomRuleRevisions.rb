# List AI custom rule revisions returns "Successful response" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_ai_custom_rule_revisions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new
p api_instance.list_ai_custom_rule_revisions("my-ai-ruleset", "my-ai-rule")
