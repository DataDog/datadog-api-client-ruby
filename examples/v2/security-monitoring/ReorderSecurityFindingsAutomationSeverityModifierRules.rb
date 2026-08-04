# Reorder severity modifier rules returns "Successfully reordered the severity modifier rules" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.reorder_security_findings_automation_severity_modifier_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_severity_modifier_rule" in the system
VALID_SEVERITY_MODIFIER_RULE_DATA_ID = ENV["VALID_SEVERITY_MODIFIER_RULE_DATA_ID"]

body = DatadogAPIClient::V2::SeverityModifierRuleReorderRequest.new({
  data: [
    DatadogAPIClient::V2::SeverityModifierRuleReorderItem.new({
      id: VALID_SEVERITY_MODIFIER_RULE_DATA_ID,
      type: DatadogAPIClient::V2::SeverityModifierRuleType::SEVERITY_MODIFIER_RULES,
    }),
  ],
})
p api_instance.reorder_security_findings_automation_severity_modifier_rules(body)
