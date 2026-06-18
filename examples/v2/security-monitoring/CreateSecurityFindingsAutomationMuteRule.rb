# Create a mute rule returns "Successfully created the mute rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_security_findings_automation_mute_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::MuteRuleCreateRequest.new({
  data: DatadogAPIClient::V2::MuteRuleDataCreate.new({
    attributes: DatadogAPIClient::V2::MuteRuleAttributesCreate.new({
      action: DatadogAPIClient::V2::MuteRuleAction.new({
        reason: DatadogAPIClient::V2::MuteReason::RISK_ACCEPTED,
      }),
      enabled: true,
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
p api_instance.create_security_findings_automation_mute_rule(body)
