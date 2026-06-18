# Reorder due date rules returns "Successfully reordered the due date rules" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.reorder_security_findings_automation_due_date_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_due_date_rule" in the system
VALID_DUE_DATE_RULE_DATA_ID = ENV["VALID_DUE_DATE_RULE_DATA_ID"]

body = DatadogAPIClient::V2::DueDateRuleReorderRequest.new({
  data: [
    DatadogAPIClient::V2::DueDateRuleReorderItem.new({
      id: VALID_DUE_DATE_RULE_DATA_ID,
      type: DatadogAPIClient::V2::DueDateRuleType::DUE_DATE_RULES,
    }),
  ],
})
p api_instance.reorder_security_findings_automation_due_date_rules(body)
