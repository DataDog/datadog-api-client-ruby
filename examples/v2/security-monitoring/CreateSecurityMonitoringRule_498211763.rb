# Create a detection rule with type 'workload_security' returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringStandardRuleCreatePayload.new({
  name: "Example-Create_a_detection_rule_with_type_workload_security_returns_OK_response",
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
      query: "@test:true",
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::COUNT,
      group_by_fields: [],
      distinct_fields: [],
      metric: "",
    }),
  ],
  filters: [],
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      condition: "a > 0",
      notifications: [],
    }),
  ],
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::FIFTEEN_MINUTES,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ONE_HOUR,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ONE_DAY,
  }),
  message: "Test rule",
  tags: [],
  is_enabled: true,
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate::WORKLOAD_SECURITY,
})
p api_instance.create_security_monitoring_rule(body)
