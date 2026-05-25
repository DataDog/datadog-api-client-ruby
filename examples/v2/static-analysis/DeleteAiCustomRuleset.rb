# Delete an AI custom ruleset returns "Successfully deleted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_ai_custom_ruleset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new
p api_instance.delete_ai_custom_ruleset("my-ai-ruleset")
