# Create a CoreWeave integration account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_core_weave_cloud_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CoreWeaveIntegrationAPI.new

body = DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountAPITokenAuthRequest.new({
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
      settings: DatadogAPIClient::V2::CoreWeaveCloudIntegrationAccountSettingsRequest.new({
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
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_core_weave_cloud_integration_account(body)
