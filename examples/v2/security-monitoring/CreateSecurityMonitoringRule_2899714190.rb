# Create a detection rule with detection method 'sequence_detection' returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringStandardRuleCreatePayload.new({
  name: "Example-Security-Monitoring",
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate::LOG_DETECTION,
  is_enabled: true,
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::COUNT,
      data_source: DatadogAPIClient::V2::SecurityMonitoringStandardDataSource::LOGS,
      distinct_fields: [],
      group_by_fields: [],
      has_optional_group_by_fields: false,
      name: "",
      query: "service:logs-rule-reducer source:paul test2",
    }),
    DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::COUNT,
      data_source: DatadogAPIClient::V2::SecurityMonitoringStandardDataSource::LOGS,
      distinct_fields: [],
      group_by_fields: [],
      has_optional_group_by_fields: false,
      name: "",
      query: "service:logs-rule-reducer source:paul test1",
    }),
  ],
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
      condition: "step_b > 0",
    }),
  ],
  message: "Logs and signals asdf",
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::SEQUENCE_DETECTION,
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::ZERO_MINUTES,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::FIVE_MINUTES,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::TEN_MINUTES,
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
  tags: [],
})
p api_instance.create_security_monitoring_rule(body)
