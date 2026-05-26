# Create an AI custom rule revision returns "Successfully created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_ai_custom_rule_revision".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::AiCustomRuleRevisionRequest.new({
  data: DatadogAPIClient::V2::AiCustomRuleRevisionRequestData.new({
    attributes: DatadogAPIClient::V2::AiCustomRuleRevisionRequestAttributes.new({
      category: DatadogAPIClient::V2::CustomRuleRevisionAttributesCategory::SECURITY,
      content: "Content",
      cwe: "79",
      description: "Ruleset description",
      directories: [],
      execution_mode: DatadogAPIClient::V2::AiCustomRuleRevisionExecutionMode::AUTO,
      globs: [
        "**/*.py",
      ],
      is_published: false,
      is_testing: false,
      severity: DatadogAPIClient::V2::CustomRuleRevisionAttributesSeverity::ERROR,
      short_description: "Ruleset short description",
      version_id: 1,
    }),
    id: "revision-abc-123",
    type: DatadogAPIClient::V2::AiCustomRuleRevisionDataType::AI_RULE_REVISION,
  }),
})
p api_instance.create_ai_custom_rule_revision("my-ai-ruleset", "my-ai-rule", body)
