# Update an AI custom ruleset returns "Successfully updated" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_ai_custom_ruleset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::AiCustomRulesetUpdateRequest.new({
  data: DatadogAPIClient::V2::AiCustomRulesetUpdateData.new({
    attributes: DatadogAPIClient::V2::AiCustomRulesetUpdateAttributes.new({
      description: "Ruleset description",
      name: "my-ai-ruleset",
      short_description: "Ruleset short description",
    }),
    id: "my-ai-ruleset",
    type: DatadogAPIClient::V2::AiCustomRulesetDataType::AI_RULESET,
  }),
})
p api_instance.update_ai_custom_ruleset("my-ai-ruleset", body)
