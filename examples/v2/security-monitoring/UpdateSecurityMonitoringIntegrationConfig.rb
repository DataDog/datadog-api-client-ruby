# Update an entity context sync configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_security_monitoring_integration_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigUpdateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigUpdateAttributes.new({
      domain: "siem-test.com",
      enabled: true,
      integration_type: DatadogAPIClient::V2::SecurityMonitoringIntegrationType::GOOGLE_WORKSPACE,
      name: "My GWS Integration (renamed)",
      secrets: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigSecrets.new({}),
      settings: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigSettings.new({}),
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigResourceType::INTEGRATION_CONFIG,
  }),
})
p api_instance.update_security_monitoring_integration_config("integration_config_id", body)
