# Update a severity modifier rule returns "Successfully updated the severity modifier rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_security_findings_automation_severity_modifier_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_severity_modifier_rule" in the system
VALID_SEVERITY_MODIFIER_RULE_DATA_ID = ENV["VALID_SEVERITY_MODIFIER_RULE_DATA_ID"]

body = DatadogAPIClient::V2::SeverityModifierRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::SeverityModifierRuleDataCreate.new({
    attributes: DatadogAPIClient::V2::SeverityModifierRuleAttributesCreate.new({
      action: DatadogAPIClient::V2::SeverityModifierRuleSetAction.new({
        description: "Lower severity for dev environment noise",
        severity: DatadogAPIClient::V2::SeverityModifierSeverity::LOW,
        type: DatadogAPIClient::V2::SeverityModifierRuleSetActionType::SET,
      }),
      enabled: true,
      name: "Downgrade misconfigurations in dev",
      rule: DatadogAPIClient::V2::AutomationRuleScope.new({
        finding_types: [
          DatadogAPIClient::V2::SecurityFindingType::MISCONFIGURATION,
        ],
        query: "env:prod team:platform",
      }),
    }),
    type: DatadogAPIClient::V2::SeverityModifierRuleType::SEVERITY_MODIFIER_RULES,
  }),
})
p api_instance.update_security_findings_automation_severity_modifier_rule(VALID_SEVERITY_MODIFIER_RULE_DATA_ID, body)
