# Create Custom Rule Revision returns "Successfully created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_custom_rule_revision".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::CustomRuleRevisionRequest.new({
  data: DatadogAPIClient::V2::CustomRuleRevisionRequestData.new({
    attributes: DatadogAPIClient::V2::CustomRuleRevisionInputAttributes.new({
      arguments: [
        DatadogAPIClient::V2::Argument.new({
          description: "YXJndW1lbnQgZGVzY3JpcHRpb24=",
          name: "YXJndW1lbnRfbmFtZQ==",
        }),
      ],
      category: DatadogAPIClient::V2::CustomRuleRevisionAttributesCategory::SECURITY,
      code: "Y29uZHVjdG9yOgogICAgLSBkZXBsb3lfb25seTogdHJ1ZQ==",
      creation_message: "Initial revision",
      cve: "CVE-2024-1234",
      cwe: "CWE-79",
      description: "bG9uZyBkZXNjcmlwdGlvbg==",
      documentation_url: "https://docs.example.com/rules/my-rule",
      is_published: false,
      is_testing: false,
      language: DatadogAPIClient::V2::Language::PYTHON,
      severity: DatadogAPIClient::V2::CustomRuleRevisionAttributesSeverity::ERROR,
      short_description: "c2hvcnQgZGVzY3JpcHRpb24=",
      should_use_ai_fix: false,
      tags: [
        "security",
        "custom",
      ],
      tests: [
        DatadogAPIClient::V2::CustomRuleRevisionTest.new({
          annotation_count: 1,
          code: "Y29uZHVjdG9yOgogICAgLSBkZXBsb3lfb25seTogdHJ1ZQ==",
          filename: "test.yaml",
        }),
      ],
      tree_sitter_query: "Y29uZHVjdG9yOgogICAgLSBkZXBsb3lfb25seTogdHJ1ZQ==",
    }),
    type: DatadogAPIClient::V2::CustomRuleRevisionDataType::CUSTOM_RULE_REVISION,
  }),
})
p api_instance.create_custom_rule_revision("ruleset_name", "rule_name", body)
