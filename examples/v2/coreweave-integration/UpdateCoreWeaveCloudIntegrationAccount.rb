# Update a CoreWeave integration account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_core_weave_cloud_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CoreWeaveIntegrationAPI.new

body = DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountAPITokenAuthUpdate.new({
        api_token: "CW-SECRET-xxxxxxxxxxxxxxxxxxxx",
        auth_type: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountAPITokenAuthType::COREWEAVE_API_TOKEN,
      }),
      dataflows: DatadogAPIClient::V2::CoreWeaveCloudIntegrationDataflowsRequest.new({
        coreweave_cloud_logs: DatadogAPIClient::V2::CoreWeaveCloudLogsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        coreweave_cloud_metrics: DatadogAPIClient::V2::CoreWeaveCloudMetricsIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "coreweave-prod",
      settings: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountSettingsUpdate.new({
        account_tags: [
          "env:prod",
          "team:gpu",
        ],
        cluster_filters: [
          "cluster:prod-*",
          "!cluster:dev",
        ],
      }),
    }),
    id: "f7a8b9c0-d1e2-4f3a-9b4c-5d6e7f8091a2",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_core_weave_cloud_integration_account("account_id", body)
