# Create a notification rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringNotificationRuleCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringNotificationRuleCreateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringNotificationRuleCreateAttributes.new({
      enabled: true,
      name: "Example-Security-Monitoring",
      selectors: DatadogAPIClient::V2::SecurityMonitoringNotificationRuleSelectors.new({
        attributes: [
          "test:123",
          "env:prod",
        ],
        implicit_vm_rule_match: false,
        rule_tags: [
          "test:123",
        ],
        rule_types: [
          DatadogAPIClient::V2::SecurityMonitoringRuleTypes::APPLICATION_SECURITY,
          DatadogAPIClient::V2::SecurityMonitoringRuleTypes::LOG_DETECTION,
        ],
        severities: [
          DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::HIGH,
        ],
        signal_tags: [
          "env:prod",
        ],
      }),
      targets: [
        "@slack-test",
      ],
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringNotificationRuleType::NOTIFICATION_RULES,
  }),
})
p api_instance.create_security_monitoring_notification_rule(body)
