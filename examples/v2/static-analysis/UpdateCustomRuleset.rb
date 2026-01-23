# Update Custom Ruleset returns "Successfully updated" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_custom_ruleset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::CustomRulesetRequest.new({
  data: DatadogAPIClient::V2::CustomRulesetRequestData.new({
    attributes: DatadogAPIClient::V2::CustomRulesetRequestDataAttributes.new({
      rules: [
        DatadogAPIClient::V2::CustomRule.new({
          created_at: "2026-01-09T13:00:57.473141Z",
          created_by: "foobarbaz",
          last_revision: DatadogAPIClient::V2::CustomRuleRevision.new({
            attributes: DatadogAPIClient::V2::CustomRuleRevisionAttributes.new({
              arguments: [
                DatadogAPIClient::V2::Argument.new({
                  description: "YXJndW1lbnQgZGVzY3JpcHRpb24=",
                  name: "YXJndW1lbnRfbmFtZQ==",
                }),
              ],
              category: DatadogAPIClient::V2::CustomRuleRevisionAttributesCategory::SECURITY,
              checksum: "8a66c4e4e631099ad71be3c1ea3ea8fc2d57193e56db2c296e2dd8a508b26b99",
              code: "Y29uZHVjdG9yOgogICAgLSBkZXBsb3lfb25seTogdHJ1ZQ==",
              created_at: "2026-01-09T13:00:57.473141Z",
              created_by: "foobarbaz",
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
            id: "revision-123",
            type: DatadogAPIClient::V2::CustomRuleRevisionDataType::CUSTOM_RULE_REVISION,
          }),
          name: "my-rule",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::CustomRulesetDataType::CUSTOM_RULESET,
  }),
})
p api_instance.update_custom_ruleset("ruleset_name", body)
