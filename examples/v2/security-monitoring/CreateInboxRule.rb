# Create a new inbox rule returns "Successfully created the inbox rule" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateInboxRuleParameters.new({
  data: DatadogAPIClient::V2::CreateInboxRuleParametersData.new({
    attributes: DatadogAPIClient::V2::CreateInboxRuleParametersDataAttributes.new({
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
    type: DatadogAPIClient::V2::InboxRulesType::INBOX_RULES,
  }),
})
p api_instance.create_inbox_rule(body)
