# Update a mute rule returns "Mute rule successfully updated" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_mute_rule" in the system
VALID_MUTE_RULE_DATA_ID = ENV["VALID_MUTE_RULE_DATA_ID"]

body = DatadogAPIClient::V2::UpdateMuteRuleParameters.new({
  data: DatadogAPIClient::V2::UpdateMuteRuleParametersData.new({
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
    id: VALID_MUTE_RULE_DATA_ID,
    type: DatadogAPIClient::V2::MuteRulesType::MUTE_RULES,
  }),
})
p api_instance.update_mute_rule(VALID_MUTE_RULE_DATA_ID, body)
