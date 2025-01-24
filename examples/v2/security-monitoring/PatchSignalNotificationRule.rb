# Patch a signal-based rule returns "Notification rule successfully patched." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_signal_notification_rule" in the system
VALID_SIGNAL_NOTIFICATION_RULE_DATA_ID = ENV["VALID_SIGNAL_NOTIFICATION_RULE_DATA_ID"]

body = DatadogAPIClient::V2::PatchNotificationRuleParameters.new({
  data: DatadogAPIClient::V2::PatchNotificationRuleParametersData.new({
    attributes: DatadogAPIClient::V2::PatchNotificationRuleParametersDataAttributes.new({
      enabled: true,
      name: "Rule 1",
      selectors: DatadogAPIClient::V2::Selectors.new({
        query: "(source:production_service OR env:prod)",
        rule_types: [
          DatadogAPIClient::V2::RuleTypesItems::MISCONFIGURATION,
          DatadogAPIClient::V2::RuleTypesItems::ATTACK_PATH,
        ],
        severities: [
          DatadogAPIClient::V2::RuleSeverity::CRITICAL,
        ],
        trigger_source: DatadogAPIClient::V2::TriggerSource::SECURITY_FINDINGS,
      }),
      targets: [
        "@john.doe@email.com",
      ],
      time_aggregation: 86400,
      version: 1,
    }),
    id: VALID_SIGNAL_NOTIFICATION_RULE_DATA_ID,
    type: DatadogAPIClient::V2::NotificationRulesType::NOTIFICATION_RULES,
  }),
})
p api_instance.patch_signal_notification_rule(VALID_SIGNAL_NOTIFICATION_RULE_DATA_ID, body)
