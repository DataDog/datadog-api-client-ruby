# Update a Temporal Cloud OpenMetrics account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_temporal_cloud_open_metrics_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAPI.new

body = DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAccountBearerTokenAuthUpdate.new({
        auth_type: DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      name: "temporal-cloud-prod",
      settings: DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAccountSettingsUpdate.new({
        include_opt_in_labels: false,
        namespaces_to_include: "prod-*,billing.a1b2c",
      }),
    }),
    id: "7c2d4e91-5a3b-4f68-b0e2-9d1f6a8c3e57",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_temporal_cloud_open_metrics_integration_account("account_id", body)
