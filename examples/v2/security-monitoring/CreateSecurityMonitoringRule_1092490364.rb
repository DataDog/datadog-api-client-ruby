# Create a cloud_configuration rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CloudConfigurationRuleCreatePayload.new({
  type: DatadogAPIClient::V2::CloudConfigurationRuleType::CLOUD_CONFIGURATION,
  name: "Example-Security-Monitoring_cloud",
  is_enabled: false,
  cases: [
    DatadogAPIClient::V2::CloudConfigurationRuleCaseCreate.new({
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [
        "channel",
      ],
    }),
  ],
  options: DatadogAPIClient::V2::CloudConfigurationRuleOptions.new({
    compliance_rule_options: DatadogAPIClient::V2::CloudConfigurationComplianceRuleOptions.new({
      resource_type: "gcp_compute_disk",
      complex_rule: false,
      rego_rule: DatadogAPIClient::V2::CloudConfigurationRegoRule.new({
        policy: 'package datadog\n\nimport data.datadog.output as dd_output\n\nimport future.keywords.contains\nimport future.keywords.if\nimport future.keywords.in\n\nmilliseconds_in_a_day := ((1000 * 60) * 60) * 24\n\neval(iam_service_account_key) = "skip" if {\n\tiam_service_account_key.disabled\n} else = "pass" if {\n\t(iam_service_account_key.resource_seen_at / milliseconds_in_a_day) - (iam_service_account_key.valid_after_time / milliseconds_in_a_day) <= 90\n} else = "fail"\n\n# This part remains unchanged for all rules\nresults contains result if {\n\tsome resource in input.resources[input.main_resource_type]\n\tresult := dd_output.format(resource, eval(resource))\n}\n',
        resource_types: [
          "gcp_compute_disk",
        ],
      }),
    }),
  }),
  message: "ddd",
  tags: [
    "my:tag",
  ],
  compliance_signal_options: DatadogAPIClient::V2::CloudConfigurationRuleComplianceSignalOptions.new({
    user_activation_status: true,
    user_group_by_fields: [
      "@account_id",
    ],
  }),
  filters: [
    DatadogAPIClient::V2::SecurityMonitoringFilter.new({
      action: DatadogAPIClient::V2::SecurityMonitoringFilterAction::REQUIRE,
      query: "resource_id:helo*",
    }),
    DatadogAPIClient::V2::SecurityMonitoringFilter.new({
      action: DatadogAPIClient::V2::SecurityMonitoringFilterAction::SUPPRESS,
      query: "control:helo*",
    }),
  ],
})
p api_instance.create_security_monitoring_rule(body)
