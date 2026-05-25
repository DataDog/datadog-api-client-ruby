# Create an AI custom rule returns "Successfully created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_ai_custom_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::AiCustomRuleRequest.new({
  data: DatadogAPIClient::V2::AiCustomRuleRequestData.new({
    attributes: DatadogAPIClient::V2::AiCustomRuleRequestAttributes.new({
      name: "my-ai-rule",
    }),
    id: "my-ai-rule",
    type: DatadogAPIClient::V2::AiCustomRuleDataType::AI_RULE,
  }),
})
p api_instance.create_ai_custom_rule("my-ai-ruleset", body)
