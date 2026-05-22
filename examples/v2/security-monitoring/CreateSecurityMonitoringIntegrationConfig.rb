# Create an entity context sync configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_security_monitoring_integration_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigCreateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigCreateAttributes.new({
      domain: "siem-test.com",
      integration_type: DatadogAPIClient::V2::SecurityMonitoringIntegrationType::GOOGLE_WORKSPACE,
      name: "My GWS Integration",
      secrets: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigSecrets.new({}),
      settings: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigSettings.new({}),
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigResourceType::INTEGRATION_CONFIG,
  }),
})
p api_instance.create_security_monitoring_integration_config(body)
