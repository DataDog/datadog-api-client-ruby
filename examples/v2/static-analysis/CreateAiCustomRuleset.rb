# Create an AI custom ruleset returns "Successfully created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_ai_custom_ruleset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::AiCustomRulesetRequest.new({
  data: DatadogAPIClient::V2::AiCustomRulesetRequestData.new({
    attributes: DatadogAPIClient::V2::AiCustomRulesetRequestAttributes.new({
      description: "Ruleset description",
      name: "my-ai-ruleset",
      short_description: "Ruleset short description",
    }),
    id: "my-ai-ruleset",
    type: DatadogAPIClient::V2::AiCustomRulesetDataType::AI_RULESET,
  }),
})
p api_instance.create_ai_custom_ruleset(body)
