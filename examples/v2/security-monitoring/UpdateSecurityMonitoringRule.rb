# Update an existing rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload.new({
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCase.new({
      notifications: [],
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::CRITICAL,
    }),
  ],
  filters: [
    DatadogAPIClient::V2::SecurityMonitoringFilter.new({
      action: DatadogAPIClient::V2::SecurityMonitoringFilterAction::REQUIRE,
    }),
  ],
  has_extended_title: true,
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::THRESHOLD,
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::ZERO_MINUTES,
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
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringRuleQuery.new({
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::COUNT,
      distinct_fields: [],
      group_by_fields: [],
    }),
  ],
  tags: [],
  version: 1,
})
p api_instance.update_security_monitoring_rule("rule_id", body)
