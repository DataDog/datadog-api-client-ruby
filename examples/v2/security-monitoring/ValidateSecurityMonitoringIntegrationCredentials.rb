# Validate entity context sync credentials returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.validate_security_monitoring_integration_credentials".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::SecurityMonitoringIntegrationCredentialsValidateRequest.new({
  data: DatadogAPIClient::V2::SecurityMonitoringIntegrationCredentialsValidateData.new({
    attributes: DatadogAPIClient::V2::SecurityMonitoringGoogleWorkspaceIntegrationCredentialsValidateAttributes.new({
      domain: "siem-test.com",
      integration_type: DatadogAPIClient::V2::SecurityMonitoringIntegrationTypeGoogleWorkspace::GOOGLE_WORKSPACE,
      secrets: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigGoogleWorkspaceSecrets.new({
        admin_email: "admin@example.com",
        service_account_json: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigGoogleWorkspaceServiceAccount.new({
          client_email: "svc@my-project.iam.gserviceaccount.com",
          private_key: '-----BEGIN PRIVATE KEY-----\n...\n-----END PRIVATE KEY-----',
          project_id: "my-project",
          type: "service_account",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::SecurityMonitoringIntegrationConfigResourceType::INTEGRATION_CONFIG,
  }),
})
p api_instance.validate_security_monitoring_integration_credentials(body)
