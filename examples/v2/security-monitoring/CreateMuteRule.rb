# Create a new mute rule returns "Successfully created the mute rule" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateMuteRuleParameters.new({
  data: DatadogAPIClient::V2::CreateMuteRuleParametersData.new({
    attributes: DatadogAPIClient::V2::CreateMuteRuleParametersDataAttributes.new({
      action: DatadogAPIClient::V2::ActionMute.new({
        expire_at: 1893452400000,
        reason: DatadogAPIClient::V2::MuteReason::DUPLICATE,
        reason_description: "Muting for a while",
      }),
      enabled: true,
      name: "Rule 1",
      rule: DatadogAPIClient::V2::Rule.new({
        issue_type: DatadogAPIClient::V2::IssueType::VULNERABILITY,
        query: "key:val",
        rule_ids: [
          "rule-id-1",
        ],
        rule_types: [
          DatadogAPIClient::V2::RuleTypesItems::APPLICATION_CODE_VULNERABILITY,
        ],
        severities: [
          DatadogAPIClient::V2::RuleSeverity::CRITICAL,
        ],
      }),
    }),
    type: DatadogAPIClient::V2::MuteRulesType::MUTE_RULES,
  }),
})
p api_instance.create_mute_rule(body)
