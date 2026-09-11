# Reorder inbox rules returns "Successfully reordered the inbox rules" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.reorder_security_findings_automation_inbox_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_inbox_rule" in the system
VALID_INBOX_RULE_DATA_ID = ENV["VALID_INBOX_RULE_DATA_ID"]

body = DatadogAPIClient::V2::InboxRuleReorderRequest.new({
  data: [
    DatadogAPIClient::V2::InboxRuleReorderItem.new({
      id: VALID_INBOX_RULE_DATA_ID,
      type: DatadogAPIClient::V2::InboxRuleType::INBOX_RULES,
    }),
  ],
})
p api_instance.reorder_security_findings_automation_inbox_rules(body)
