# Update Custom Ruleset returns "Successfully updated" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_custom_ruleset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new

body = DatadogAPIClient::V2::CustomRulesetRequest.new({
  data: DatadogAPIClient::V2::CustomRulesetRequestData.new({
    attributes: DatadogAPIClient::V2::CustomRulesetRequestDataAttributes.new({
      description: "bG9uZyBkZXNjcmlwdGlvbg==",
      name: "my-ruleset",
      rules: [
        DatadogAPIClient::V2::CustomRule.new({
          id: "my-rule",
          last_revision: DatadogAPIClient::V2::CustomRuleRevisionInput.new({
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
          name: "my-rule",
          revisions: [
            DatadogAPIClient::V2::CustomRuleRevisionInput.new({
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
          ],
        }),
      ],
      short_description: "c2hvcnQgZGVzY3JpcHRpb24=",
    }),
    id: "my-ruleset",
    type: DatadogAPIClient::V2::CustomRulesetDataType::CUSTOM_RULESET,
  }),
})
p api_instance.update_custom_ruleset("ruleset_name", body)
