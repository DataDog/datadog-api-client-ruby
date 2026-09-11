# Update an inbox rule returns "Successfully updated the inbox rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_security_findings_automation_inbox_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_inbox_rule" in the system
VALID_INBOX_RULE_DATA_ID = ENV["VALID_INBOX_RULE_DATA_ID"]

body = DatadogAPIClient::V2::InboxRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::InboxRuleDataUpdate.new({
    attributes: DatadogAPIClient::V2::InboxRuleAttributesCreate.new({
      action: DatadogAPIClient::V2::InboxRuleAction.new({
        description: "Needs triage",
      }),
      enabled: false,
      name: "Example-Security-Monitoring",
      rule: DatadogAPIClient::V2::AutomationRuleScope.new({
        finding_types: [
          DatadogAPIClient::V2::SecurityFindingType::MISCONFIGURATION,
        ],
        query: "env:staging",
      }),
    }),
    id: VALID_INBOX_RULE_DATA_ID,
    type: DatadogAPIClient::V2::InboxRuleType::INBOX_RULES,
  }),
})
p api_instance.update_security_findings_automation_inbox_rule(VALID_INBOX_RULE_DATA_ID, body)
