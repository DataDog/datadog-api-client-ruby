# Create a detection rule with detection method 'anomaly_detection' with enabled feature 'instantaneousBaseline' returns
# "OK" response

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
      group_by_fields: [
        "@usr.email",
        "@network.client.ip",
      ],
      has_optional_group_by_fields: false,
      name: "",
      query: "service:app status:error",
    }),
  ],
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate.new({
      name: "",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
      condition: "a > 0.995",
    }),
  ],
  message: "An anomaly detection rule",
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::ANOMALY_DETECTION,
    evaluation_window: DatadogAPIClient::V2::SecurityMonitoringRuleEvaluationWindow::FIFTEEN_MINUTES,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ONE_HOUR,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ONE_DAY,
    anomaly_detection_options: DatadogAPIClient::V2::SecurityMonitoringRuleAnomalyDetectionOptions.new({
      bucket_duration: DatadogAPIClient::V2::SecurityMonitoringRuleAnomalyDetectionOptionsBucketDuration::FIVE_MINUTES,
      learning_duration: DatadogAPIClient::V2::SecurityMonitoringRuleAnomalyDetectionOptionsLearningDuration::ONE_DAY,
      detection_tolerance: DatadogAPIClient::V2::SecurityMonitoringRuleAnomalyDetectionOptionsDetectionTolerance::THREE,
      instantaneous_baseline: true,
    }),
  }),
  tags: [],
  filters: [],
})
p api_instance.create_security_monitoring_rule(body)
