# Create a new signal-based notification rule returns "Successfully created the notification rule." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateNotificationRuleParameters.new({
  data: DatadogAPIClient::V2::CreateNotificationRuleParametersData.new({
    attributes: DatadogAPIClient::V2::CreateNotificationRuleParametersDataAttributes.new({
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
    }),
    type: DatadogAPIClient::V2::NotificationRulesType::NOTIFICATION_RULES,
  }),
})
p api_instance.create_signal_notification_rule(body)
