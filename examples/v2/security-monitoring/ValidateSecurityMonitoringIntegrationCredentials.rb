# Validate entity context sync credentials returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.validate_security_monitoring_integration_credentials".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringIntegrationCredentialsValidateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringIntegrationCredentialsValidateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringIntegrationCredentialsValidateAttributes.new({
      domain: "siem-test.com",
      integration_type: DatadogAPIClient::V2::SecurityMonitoringIntegrationType::GOOGLE_WORKSPACE,
      secrets: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigSecrets.new({}),
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigResourceType::INTEGRATION_CONFIG,
  }),
})
p api_instance.validate_security_monitoring_integration_credentials(body)
