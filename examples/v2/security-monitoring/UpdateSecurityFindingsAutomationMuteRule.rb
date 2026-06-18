# Update a mute rule returns "Successfully updated the mute rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_security_findings_automation_mute_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_mute_rule" in the system
VALID_MUTE_RULE_DATA_ID = ENV["VALID_MUTE_RULE_DATA_ID"]

body = DatadogAPIClient::V2::MuteRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::MuteRuleDataCreate.new({
    attributes: DatadogAPIClient::V2::MuteRuleAttributesCreate.new({
      action: DatadogAPIClient::V2::MuteRuleAction.new({
        reason: DatadogAPIClient::V2::MuteReason::FALSE_POSITIVE,
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
    type: DatadogAPIClient::V2::MuteRuleType::MUTE_RULES,
  }),
})
p api_instance.update_security_findings_automation_mute_rule(VALID_MUTE_RULE_DATA_ID, body)
