# Create an Elastic Cloud integration account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_elastic_cloud_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ElasticCloudIntegrationAccountsAPI.new

body = DatadogAPIClient::V2::ElasticCloudIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::ElasticCloudIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::ElasticCloudIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::IntegrationAccountBasicAuthRequest.new({
        auth_type: DatadogAPIClient::V2::IntegrationAccountBasicAuthType::BASIC,
        password: "your-password",
        username: "datadog",
      }),
      dataflows: DatadogAPIClient::V2::ElasticCloudIntegrationDataflowsRequest.new({
        elastic_cloud_detailed_index_stats: DatadogAPIClient::V2::ElasticCloudDetailedIndexStatsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        elastic_cloud_index_stats: DatadogAPIClient::V2::ElasticCloudIndexStatsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        elastic_cloud_pending_task_stats: DatadogAPIClient::V2::ElasticCloudPendingTaskStatsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        elastic_cloud_primary_shard_graceful_timeout: DatadogAPIClient::V2::ElasticCloudPrimaryShardGracefulTimeoutIntegrationDataflowRequest.new({
          enabled: true,
        }),
        elastic_cloud_primary_shard_stats: DatadogAPIClient::V2::ElasticCloudPrimaryShardStatsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        elastic_cloud_shard_allocation_stats: DatadogAPIClient::V2::ElasticCloudShardAllocationStatsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        elastic_cloud_slm_stats: DatadogAPIClient::V2::ElasticCloudSlmStatsIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "elastic-cloud-prod",
      settings: DatadogAPIClient::V2::ElasticCloudIntegrationAccountSettingsRequest.new({
        tags: "env:prod,team:saasint",
        url: "https://example.es.us-central1.gcp.cloud.es.io:9243",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_elastic_cloud_integration_account(body)
