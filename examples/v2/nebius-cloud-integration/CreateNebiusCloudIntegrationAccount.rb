# Create a Nebius Cloud integration account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_nebius_cloud_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::NebiusCloudIntegrationAPI.new

body = DatadogAPIClient::V2::NebiusCloudIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::NebiusCloudIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::NebiusCloudIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::NebiusCloudIntegrationAccountServiceAccountAuthRequest.new({
        auth_type: DatadogAPIClient::V2::NebiusCloudIntegrationAccountServiceAccountAuthType::NEBIUS_SERVICE_ACCOUNT,
        private_key: '-----BEGIN PRIVATE KEY-----\nMIIE...\n-----END PRIVATE KEY-----',
        public_key_id: "publickey-yyyyyyyy",
        service_account_id: "serviceaccount-xxxxxxxx",
        static_api_key: "eyJhbGciOi...static-api-key",
      }),
      dataflows: DatadogAPIClient::V2::NebiusCloudIntegrationDataflowsRequest.new({
        nebius_cloud_cost_collection: DatadogAPIClient::V2::NebiusCloudCostCollectionIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::NebiusCloudCostCollectionIntegrationDataflowSettingsRequest.new({
            access_key_id: "AKID0123456789ABCDEF",
            access_key_secret: "wJalrXUtnFEMIstaticaccesskey",
            bucket_name: "nebius-cost-exports",
            bucket_prefix_path: "cost-export/2026/",
            bucket_region: "eu-north1",
          }),
        }),
        nebius_cloud_logs: DatadogAPIClient::V2::NebiusCloudLogsIntegrationDataflowRequest.new({
          enabled: true,
          settings: DatadogAPIClient::V2::NebiusCloudLogsIntegrationDataflowSettingsRequest.new({
            enabled_services: [
              "nebius-cloud-compute",
              "nebius-cloud-kubernetes",
              "default",
            ],
          }),
        }),
        nebius_cloud_resources: DatadogAPIClient::V2::NebiusCloudResourcesIntegrationDataflowRequest.new({
          enabled: true,
        }),
        nebius_cloud_service_quota_collection: DatadogAPIClient::V2::NebiusCloudServiceQuotaCollectionIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "nebius-prod",
      settings: DatadogAPIClient::V2::NebiusCloudIntegrationAccountSettingsRequest.new({
        account_tags: [
          "env:prod",
          "team:ai",
        ],
        tenant_id: "tenant-12345678",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_nebius_cloud_integration_account(body)
