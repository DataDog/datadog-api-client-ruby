# Create a WAF custom rule returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ApplicationSecurityAPI.new

body = DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleCreateRequest.new({
  data: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleCreateData.new({
    attributes: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleCreateAttributes.new({
      action: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleAction.new({
        action: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleActionAction::BLOCK_REQUEST,
        parameters: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleActionParameters.new({
          location: "/blocking",
          status_code: 403,
        }),
      }),
      blocking: false,
      conditions: [
        DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleCondition.new({
          operator: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionOperator::MATCH_REGEX,
          parameters: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionParameters.new({
            data: "blocked_users",
            inputs: [
              DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionInput.new({
                address: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionInputAddress::SERVER_DB_STATEMENT,
                key_path: [],
              }),
            ],
            list: [],
            options: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleConditionOptions.new({
              case_sensitive: false,
              min_length: 0,
            }),
            regex: "path.*",
            value: "custom_tag",
          }),
        }),
      ],
      enabled: false,
      name: "Block request from a bad useragent",
      path_glob: "/api/search/*",
      scope: [
        DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleScope.new({
          env: "prod",
          service: "billing-service",
        }),
      ],
      tags: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleTags.new({
        category: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleTagsCategory::BUSINESS_LOGIC,
        type: "users.login.success",
      }),
    }),
    type: DatadogAPIClient::V2::ApplicationSecurityWafCustomRuleType::CUSTOM_RULE,
  }),
})
p api_instance.create_application_security_waf_custom_rule(body)
