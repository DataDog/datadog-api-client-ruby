# Create a detection rule with type 'signal_correlation' returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "security_rule" in the system
SECURITY_RULE_ID = ENV["SECURITY_RULE_ID"]

# there is a valid "security_rule_bis" in the system
SECURITY_RULE_BIS_ID = ENV["SECURITY_RULE_BIS_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringSignalRuleCreatePayload.new({
  name: "Example-Security-Monitoring_signal_rule",
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringSignalRuleQuery.new({
      rule_id: SECURITY_RULE_ID,
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::EVENT_COUNT,
      correlated_by_fields: [
        "host",
      ],
      correlated_query_index: 1,
    }),
    DatadogAPIClient::V2::SecurityMonitoringSignalRuleQuery.new({
      rule_id: SECURITY_RULE_BIS_ID,
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::EVENT_COUNT,
      correlated_by_fields: [
        "host",
      ],
    }),
  ],
  filters: [],
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      condition: "a > 0 && b > 0",
      notifications: [],
    }),
  ],
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::FIFTEEN_MINUTES,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ONE_HOUR,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ONE_DAY,
  }),
  message: "Test signal correlation rule",
  tags: [],
  is_enabled: true,
  type: DatadogAPIClient::V2::SecurityMonitoringSignalRuleType::SIGNAL_CORRELATION,
})
p api_instance.create_security_monitoring_rule(body)
