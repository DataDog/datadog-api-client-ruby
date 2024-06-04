# Test a rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringRuleTestRequest.new({
  rule: DatadogAPIClient::V2::SecurityMonitoringStandardRuleTestPayload.new({
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
    message: "My security monitoring rule message.",
    name: "My security monitoring rule.",
    options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
      decrease_criticality_based_on_env: false,
      detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::THRESHOLD,
      evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::ZERO_MINUTES,
      keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ZERO_MINUTES,
      max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ZERO_MINUTES,
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
    type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeTest::LOG_DETECTION,
  }),
  rule_query_payloads: [
    DatadogAPIClient::V2::SecurityMonitoringRuleQueryPayload.new({
      expected_result: true,
      index: 0,
      payload: DatadogAPIClient::V2::SecurityMonitoringRuleQueryPayloadData.new({
        ddsource: "source_here",
        ddtags: "env:staging,version:5.1",
        hostname: "i-012345678",
        message: "2019-11-19T14:37:58,995 INFO [process.name][20081] Hello World",
        service: "payment",
      }),
    }),
  ],
})
p api_instance.test_security_monitoring_rule(body)
