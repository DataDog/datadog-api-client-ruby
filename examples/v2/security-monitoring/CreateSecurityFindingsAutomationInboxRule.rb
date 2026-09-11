# Create an inbox rule returns "Successfully created the inbox rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_security_findings_automation_inbox_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::InboxRuleCreateRequest.new({
  data: DatadogAPIClient::V2::InboxRuleDataCreate.new({
    attributes: DatadogAPIClient::V2::InboxRuleAttributesCreate.new({
      action: DatadogAPIClient::V2::InboxRuleAction.new({
        description: "Needs triage",
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
    type: DatadogAPIClient::V2::InboxRuleType::INBOX_RULES,
  }),
})
p api_instance.create_security_findings_automation_inbox_rule(body)
