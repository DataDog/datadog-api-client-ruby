# Update a cloud configuration rule's details returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "cloud_configuration_rule" in the system
CLOUD_CONFIGURATION_RULE_ID = ENV["CLOUD_CONFIGURATION_RULE_ID"]

body = DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload.new({
  name: "Example-Security-Monitoring_cloud_updated",
  is_enabled: false,
  cases: [
    DatadogAPIClient::V2::SecurityMonitoringRuleCase.new({
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
    }),
  ],
  options: DatadogAPIClient::V2::SecurityMonitoringRuleOptions.new({
    compliance_rule_options: DatadogAPIClient::V2::CloudConfigurationComplianceRuleOptions.new({
      resource_type: "gcp_compute_disk",
      rego_rule: DatadogAPIClient::V2::CloudConfigurationRegoRule.new({
        policy: 'package datadog\n',
        resource_types: [
          "gcp_compute_disk",
        ],
      }),
    }),
  }),
  message: "ddd",
  tags: [],
  compliance_signal_options: DatadogAPIClient::V2::CloudConfigurationRuleComplianceSignalOptions.new({
    user_activation_status: false,
    user_group_by_fields: [],
  }),
})
p api_instance.update_security_monitoring_rule(CLOUD_CONFIGURATION_RULE_ID, body)
