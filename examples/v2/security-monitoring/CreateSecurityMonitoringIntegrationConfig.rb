# Create an entity context sync configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_security_monitoring_integration_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigCreateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigCreateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringGoogleWorkspaceIntegrationConfigCreateAttributes.new({
      domain: "siem-test.com",
      integration_type: DatadogAPIClient::V2::SecurityMonitoringIntegrationTypeGoogleWorkspace::GOOGLE_WORKSPACE,
      name: "My GWS Integration",
      secrets: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigGoogleWorkspaceSecrets.new({
        admin_email: "admin@example.com",
        service_account_json: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigGoogleWorkspaceServiceAccount.new({
          client_email: "svc@my-project.iam.gserviceaccount.com",
          private_key: '-----BEGIN PRIVATE KEY-----\n...\n-----END PRIVATE KEY-----',
          project_id: "my-project",
          type: "service_account",
        }),
      }),
      settings: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigSettings.new({}),
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigResourceType::INTEGRATION_CONFIG,
  }),
})
p api_instance.create_security_monitoring_integration_config(body)
