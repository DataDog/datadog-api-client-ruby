# Create a cloud_configuration rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CloudConfigurationRuleCreatePayload.new({
  type: DatadogAPIClient::V2::CloudConfigurationRuleType::CLOUD_CONFIGURATION,
  name: "Example-Create_a_cloud_configuration_rule_returns_OK_response_cloud",
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
        policy: 'package datadog\n',
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
})
p api_instance.create_security_monitoring_rule(body)
