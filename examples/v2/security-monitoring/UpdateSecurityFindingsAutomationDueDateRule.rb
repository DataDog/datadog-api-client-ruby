# Update a due date rule returns "Successfully updated the due date rule" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_security_findings_automation_due_date_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_due_date_rule" in the system
VALID_DUE_DATE_RULE_DATA_ID = ENV["VALID_DUE_DATE_RULE_DATA_ID"]

body = DatadogAPIClient::V2::DueDateRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::DueDateRuleDataCreate.new({
    attributes: DatadogAPIClient::V2::DueDateRuleAttributesCreate.new({
      action: DatadogAPIClient::V2::DueDateRuleAction.new({
        due_days_per_severity: [
          DatadogAPIClient::V2::DueDatePerSeverityItem.new({
            due_in_days: 14,
            severity: DatadogAPIClient::V2::DueDateSeverity::CRITICAL,
          }),
        ],
        due_from: DatadogAPIClient::V2::DueDateFrom::FIRST_SEEN,
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
    type: DatadogAPIClient::V2::DueDateRuleType::DUE_DATE_RULES,
  }),
})
p api_instance.update_security_findings_automation_due_date_rule(VALID_DUE_DATE_RULE_DATA_ID, body)
