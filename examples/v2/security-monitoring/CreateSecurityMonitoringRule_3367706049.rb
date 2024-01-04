# Create a detection rule with detection method 'third_party' returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringStandardRuleCreatePayload.new({
  name: "Example-Security-Monitoring",
  type: DatadogAPIClient::V2::SecurityMonitoringRuleTypeCreate::LOG_DETECTION,
  is_enabled: true,
  third_party_cases: [
    DatadogAPIClient::V2::SecurityMonitoringThirdPartyRuleCaseCreate.new({
      query: "status:error",
      name: "high",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::HIGH,
    }),
    DatadogAPIClient::V2::SecurityMonitoringThirdPartyRuleCaseCreate.new({
      query: "status:info",
      name: "low",
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::LOW,
    }),
  ],
  queries: [],
  cases: [],
  message: "This is a third party rule",
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    detection_method: DatadogAPIClient::V2::SecurityMonitoringRuleDetectionMethod::THIRD_PARTY,
    keep_alive: DatadogAPIClient::V2::SecurityMonitoringRuleKeepAlive::ZERO_MINUTES,
    max_signal_duration: DatadogAPIClient::V2::SecurityMonitoringRuleMaxSignalDuration::ZERO_MINUTES,
    third_party_rule_options: DatadogAPIClient::V2::SecurityMonitoringRuleThirdPartyOptions.new({
      default_status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      root_queries: [
        DatadogAPIClient::V2::SecurityMonitoringThirdPartyRootQuery.new({
          query: "source:guardduty @details.alertType:*EC2*",
          group_by_fields: [
            "instance-id",
          ],
        }),
        DatadogAPIClient::V2::SecurityMonitoringThirdPartyRootQuery.new({
          query: "source:guardduty",
          group_by_fields: [],
        }),
      ],
    }),
  }),
})
p api_instance.create_security_monitoring_rule(body)
