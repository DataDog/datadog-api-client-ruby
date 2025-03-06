# Update a WAF Custom Rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

# there is a valid "custom_rule" in the system
CUSTOM_RULE_DATA_ID = ENV["CUSTOM_RULE_DATA_ID"]

body = DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleUpdateData.new({
    type: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleType::CUSTOM_RULE,
    attributes: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleUpdateAttributes.new({
      blocking: false,
      conditions: [
        DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleCondition.new({
          operator: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionOperator::MATCH_REGEX,
          parameters: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionParameters.new({
            inputs: [
              DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionInput.new({
                address: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionInputAddress::SERVER_REQUEST_QUERY,
                key_path: [
                  "id",
                ],
              }),
            ],
            regex: "badactor",
          }),
        }),
      ],
      enabled: false,
      name: "test",
      path_glob: "/test",
      scope: [
        DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleScope.new({
          env: "test",
          service: "test",
        }),
      ],
      tags: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleTags.new({
        category: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleTagsCategory::ATTACK_ATTEMPT,
        type: "test",
      }),
    }),
  }),
})
p api_instance.update_application_security_waf_custom_rule(CUSTOM_RULE_DATA_ID, body)
