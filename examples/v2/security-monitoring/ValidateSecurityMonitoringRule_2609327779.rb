# Validate a detection rule with detection method 'new_value' with enabled feature 'instantaneousBaseline' returns "OK"
# response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringStandardRulePayload.new({
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
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
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::NEW_VALUE,
    new_value_options: DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptions.new({
      forget_after: DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptionsForgetAfter::ONE_WEEK,
      instantaneous_baseline: true,
      learning_duration: DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptionsLearningDuration::ONE_DAY,
      learning_threshold: DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptionsLearningThreshold::ZERO_OCCURRENCES,
      learning_method: DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptionsLearningMethod::DURATION,
    }),
  }),
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
      query: "source:source_here",
      group_by_fields: [
        "@userIdentity.assumed_role",
      ],
      distinct_fields: [],
      metric: "name",
      metrics: [
        "name",
      ],
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::NEW_VALUE,
      name: "",
      data_source: DatadogAPIClient::V2::SecurityMonitoringStandardDataSource::LOGS,
    }),
  ],
  tags: [
    "env:prod",
    "team:security",
  ],
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate::LOG_DETECTION,
})
api_instance.validate_security_monitoring_rule(body)
