# Validate a detection rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringStandardRulePayload.new({
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
      condition: "a > 0",
    }),
  ],
  has_extended_title: true,
  is_enabled: true,
  message: "My security monitoring rule",
  name: "My security monitoring rule",
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::THIRTY_MINUTES,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::THIRTY_MINUTES,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::THIRTY_MINUTES,
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::THRESHOLD,
  }),
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
      query: "source:source_here",
      group_by_fields: [
        "@userIdentity.assumed_role",
      ],
      distinct_fields: [],
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::COUNT,
      name: "",
    }),
  ],
  tags: [
    "env:prod",
    "team:security",
  ],
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate::LOG_DETECTION,
})
api_instance.validate_security_monitoring_rule(body)
