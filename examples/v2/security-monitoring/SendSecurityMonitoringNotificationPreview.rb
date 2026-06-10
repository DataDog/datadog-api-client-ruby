# Test a notification rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateNotificationRuleParameters.new({
  data: DatadogAPIClient::V2::CreateNotificationRuleParametersData.new({
    attributes: DatadogAPIClient::V2::CreateNotificationRuleParametersDataAttributes.new({
      enabled: true,
      name: "Rule 1",
      selectors: DatadogAPIClient::V2::Selectors.new({
        query: "env:prod",
        rule_types: [
          DatadogAPIClient::V2::RuleTypesItems::LOG_DETECTION,
        ],
        severities: [
          DatadogAPIClient::V2::RuleSeverity::CRITICAL,
        ],
        trigger_source: DatadogAPIClient::V2::TriggerSource::SECURITY_SIGNALS,
      }),
      targets: [
        "@john.doe@email.com",
      ],
    }),
    type: DatadogAPIClient::V2::NotificationRulesType::NOTIFICATION_RULES,
  }),
})
p api_instance.send_security_monitoring_notification_preview(body)
