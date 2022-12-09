# Create a cloud configuration rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CloudConfigurationRuleCreatePayload.new({
  name: "Example-Create_a_cloud_configuration_rule_returns_OK_response",
  cases: [
    DatadogAPIClient::V2::CloudConfigurationRuleCaseCreate.new({
      status: DatadogAPIClient::V2::SecurityMonitoringRuleSeverity::INFO,
      notifications: [],
    }),
  ],
  options: DatadogAPIClient::V2::CloudConfigurationRuleOptions.new({}),
  compliance_signal_options: DatadogAPIClient::V2::CloudConfigurationRuleComplianceSignalOptions.new({
    user_activation_status: false,
    user_group_by_fields: [],
  }),
  message: "Test rule",
  tags: [],
  is_enabled: true,
  type: DatadogAPIClient::V2::CloudConfigurationRuleType::CLOUD_CONFIGURATION,
})
p api_instance.create_security_monitoring_rule(body)
