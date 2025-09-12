# Validate a detection rule with detection method 'sequence_detection' returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringStandardRulePayload.new({
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
      condition: "step_b > 0",
    }),
  ],
  has_extended_title: true,
  is_enabled: true,
  message: "My security monitoring rule",
  name: "My security monitoring rule",
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::ZERO_MINUTES,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::FIVE_MINUTES,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::TEN_MINUTES,
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::SEQUENCE_DETECTION,
    sequence_detection_options: DatadogAPIClient::V2::SecurityMonitoringRuleSequenceDetectionOptions.new({
      step_transitions: [
        DatadogAPIClient::V2::SecurityMonitoringRuleSequenceDetectionStepTransition.new({
          child: "step_b",
          evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::FIFTEEN_MINUTES,
          parent: "step_a",
        }),
      ],
      steps: [
        DatadogAPIClient::V2::SecurityMonitoringRuleSequenceDetectionStep.new({
          condition: "a > 0",
          evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::ONE_MINUTE,
          name: "step_a",
        }),
        DatadogAPIClient::V2::SecurityMonitoringRuleSequenceDetectionStep.new({
          condition: "b > 0",
          evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::ONE_MINUTE,
          name: "step_b",
        }),
      ],
    }),
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
    DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
      query: "source:source_here2",
      group_by_fields: [],
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
