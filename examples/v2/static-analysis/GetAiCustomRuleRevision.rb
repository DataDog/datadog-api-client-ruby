# Get an AI custom rule revision returns "Successful response" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_ai_custom_rule_revision".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new
p api_instance.get_ai_custom_rule_revision("my-ai-ruleset", "my-ai-rule", "revision-abc-123")
