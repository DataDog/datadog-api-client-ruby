# Create a detection rule with type 'impossible_travel' returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringStandardRuleCreatePayload.new({
  queries: [
    DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery.new({
      aggregation: DatadogAPIClient::V2::SecurityMonitoringRuleQueryAggregation::GEO_DATA,
      group_by_fields: [
        "@usr.id",
      ],
      distinct_fields: [],
      metric: "@network.client.geoip",
      query: "*",
    }),
  ],
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
    }),
  ],
  has_extended_title: true,
  message: "test",
  is_enabled: true,
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ONE_DAY,
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::FIFTEEN_MINUTES,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ONE_HOUR,
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::IMPOSSIBLE_TRAVEL,
    impossible_travel_options: DatadogAPIClient::V2::SecurityMonitoringRuleImpossibleTravelOptions.new({
      baseline_user_locations: false,
    }),
  }),
  name: "Example-Security-Monitoring",
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate::LOG_DETECTION,
  tags: [],
  filters: [],
})
p api_instance.create_security_monitoring_rule(body)
