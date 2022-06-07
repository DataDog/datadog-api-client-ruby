# Create a detection rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityPlatformAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleCreatePayload.new({
  cases: [],
  filters: [
    DatadogAPIClient::V2::SecurityMonitoringFilter.new({
      action: DatadogAPIClient::V2::SecurityMonitoringFilterAction::REQUIRE,
    }),
  ],
  has_extended_title: true,
  is_enabled: true,
  message: "",
  name: "My security monitoring rule.",
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::THRESHOLD,
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::ZERO_MINUTES,
    hardcoded_evaluator_type: DatadogAPIClient::V2::SecurityMonitoringRuleHardcodedEvaluatorType::LOG4SHELL,
    impossible_travel_options: DatadogAPIClient::V2::SecurityMonitoringRuleImpossibleTravelOptions.new({
      baseline_user_locations: true,
    }),
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ZERO_MINUTES,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ZERO_MINUTES,
    new_value_options: DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptions.new({
      forget_after: DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptionsForgetAfter::ONE_DAY,
      learning_duration: DatadogAPIClient::V2::SecurityMonitoringRuleNewValueOptionsLearningDuration::ZERO_DAYS,
    }),
  }),
  queries: [],
  tags: [
    "env:prod",
    "team:security",
  ],
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate::LOG_DETECTION,
})
p api_instance.create_security_monitoring_rule(body)
