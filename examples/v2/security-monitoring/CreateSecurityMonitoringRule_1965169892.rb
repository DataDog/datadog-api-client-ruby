# Create a detection rule with type 'application_security 'returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringStandardRuleCreatePayload.new({
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate::APPLICATION_SECURITY,
  name: "Example-Security-Monitoring_appsec_rule",
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
      query: "@appsec.security_activity:business_logic.users.login.failure",
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::COUNT,
      group_by_fields: [
        "service",
        "@http.client_ip",
      ],
      distinct_fields: [],
    }),
  ],
  filters: [],
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
      condition: "a > 100000",
      actions: [
        DatadogAPIClient::V2::SecurityMonitoringRuleCaseAction.new({
          type: DatadogAPIClient::V2::SecurityMonitoringRuleCaseActionType::BLOCK_IP,
          options: DatadogAPIClient::V2::SecurityMonitoringRuleCaseActionOptions.new({
            duration: 900,
          }),
        }),
        DatadogAPIClient::V2::SecurityMonitoringRuleCaseAction.new({
          type: DatadogAPIClient::V2::SecurityMonitoringRuleCaseActionType::USER_BEHAVIOR,
          options: DatadogAPIClient::V2::SecurityMonitoringRuleCaseActionOptions.new({
            user_behavior_name: "behavior",
          }),
        }),
      ],
    }),
  ],
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ONE_HOUR,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ONE_DAY,
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::FIFTEEN_MINUTES,
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::THRESHOLD,
  }),
  is_enabled: true,
  message: "Test rule",
  tags: [],
  group_signals_by: [
    "service",
  ],
})
p api_instance.create_security_monitoring_rule(body)
