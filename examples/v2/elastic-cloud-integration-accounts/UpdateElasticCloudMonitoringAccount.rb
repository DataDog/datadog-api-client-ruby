# Update an Elastic Cloud monitoring account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_elastic_cloud_monitoring_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ElasticCloudIntegrationAccountsAPI.new

body = DatadogAPIClient::V2::ElasticCloudMonitoringAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::ElasticCloudMonitoringAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::ElasticCloudMonitoringAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::ElasticCloudBasicAuth.new({
        password: "your-password",
        type: DatadogAPIClient::V2::ElasticCloudBasicAuthType::BASIC,
        username: "datadog",
      }),
      dataflows: [
        DatadogAPIClient::V2::ElasticCloudDataflow.new({
          enabled: true,
          id: DatadogAPIClient::V2::ElasticCloudDataflowId::METRICS,
        }),
      ],
      name: "elastic-cloud-prod",
      settings: DatadogAPIClient::V2::ElasticCloudSettingsUpdate.new({
        cat_allocation_stats_enabled: false,
        detailed_index_stats_enabled: false,
        index_stats_enabled: false,
        pending_task_stats_enabled: false,
        pshard_graceful_to_enabled: false,
        pshard_stats_enabled: false,
        slm_stats_enabled: false,
        tags: [
          "env:prod",
        ],
        url: "https://example.es.us-central1.gcp.cloud.es.io:9243",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_elastic_cloud_monitoring_account("account_id", body)
