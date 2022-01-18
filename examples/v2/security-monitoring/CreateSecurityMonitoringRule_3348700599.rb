# Create a detection rule with detection method "third_party" returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleCreatePayload.new({
  name: "Example-Create_a_detection_rule_with_detection_method_third_party_returns_OK_response",
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringRuleQueryCreate.new({
      query: "@test:true",
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::NONE,
      group_by_fields: [],
      distinct_fields: [],
    }),
  ],
  filters: [],
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
    }),
  ],
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::THIRD_PARTY,
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::ZERO_MINUTES,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ONE_HOUR,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ONE_DAY,
    third_party_rule_options: DatadogAPIClient::V2::SecurityMonitoringRuleThirdPartyOptions.new({
      root_query: "@pop",
      default_status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::LOW,
    }),
  }),
  message: "Example-Create_a_detection_rule_with_detection_method_third_party_returns_OK_response message",
  tags: [],
  is_enabled: true,
})
p api_instance.create_security_monitoring_rule(body)
