# Create an Elastic Cloud monitoring account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_elastic_cloud_monitoring_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ElasticCloudMonitoringAPI.new

body = DatadogAPIClient::V2::ElasticCloudMonitoringAccountRequest.new({
  data: DatadogAPIClient::V2::ElasticCloudMonitoringAccountCreateData.new({
    attributes: DatadogAPIClient::V2::ElasticCloudMonitoringAccountAttributes.new({
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
      settings: DatadogAPIClient::V2::ElasticCloudSettings.new({
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
p api_instance.create_elastic_cloud_monitoring_account(body)
