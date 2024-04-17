# Update a notification rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "notification_rule" in the system
NOTIFICATION_RULE_DATA_ID = ENV["NOTIFICATION_RULE_DATA_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringNotificationRuleUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringNotificationRuleUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringNotificationRuleUpdateAttributes.new({
      version: 1,
      name: "Example-Security-Monitoring",
      enabled: false,
      selectors: DatadogAPIClient::V2::SecurityMonitoringNotificationRuleSelectors.new({
        attributes: [
          "fim:true",
        ],
        implicit_vm_rule_match: false,
        rule_tags: [
          "fim:true",
        ],
        severities: [
          DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::HIGH,
        ],
        signal_tags: [],
        rule_types: [
          DatadogAPIClient::V2::SecurityMonitoringRuleTypes::LOG_DETECTION,
          DatadogAPIClient::V2::SecurityMonitoringRuleTypes::CLOUD_CONFIGURATION,
        ],
      }),
      targets: [
        "test2",
      ],
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringNotificationRuleType::NOTIFICATION_RULES,
  }),
})
p api_instance.edit_security_monitoring_notification_rule(NOTIFICATION_RULE_DATA_ID, body)
