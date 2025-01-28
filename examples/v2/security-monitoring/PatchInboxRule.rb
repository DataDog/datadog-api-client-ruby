# Patch an inbox rule returns "Inbox rule successfully patched" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_inbox_rule" in the system
VALID_INBOX_RULE_DATA_ID = ENV["VALID_INBOX_RULE_DATA_ID"]

body = DatadogAPIClient::V2::PatchInboxRulesParameters.new({
  data: DatadogAPIClient::V2::PatchInboxRulesParametersData.new({
    attributes: DatadogAPIClient::V2::PatchInboxRulesParametersDataAttributes.new({
      action: DatadogAPIClient::V2::ActionInbox.new({
        reason_description: "We want to focus on these items.",
      }),
      enabled: true,
      name: "Rule 1",
      rule: DatadogAPIClient::V2::AutomationRule.new({
        issue_type: DatadogAPIClient::V2::IssueType::VULNERABILITY,
        query: "key:val",
        rule_ids: [
          "rule-id-1",
        ],
        rule_types: [
          DatadogAPIClient::V2::SecurityRuleTypesItems::APPLICATION_CODE_VULNERABILITY,
        ],
        severities: [
          DatadogAPIClient::V2::SecurityRuleSeverity::CRITICAL,
        ],
      }),
    }),
    id: VALID_INBOX_RULE_DATA_ID,
    type: DatadogAPIClient::V2::InboxRulesType::INBOX_RULES,
  }),
})
p api_instance.patch_inbox_rule(VALID_INBOX_RULE_DATA_ID, body)
