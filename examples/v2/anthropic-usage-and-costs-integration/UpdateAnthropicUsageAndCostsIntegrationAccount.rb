# Update an Anthropic Usage and Costs account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_anthropic_usage_and_costs_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAPI.new

body = DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountBearerTokenAuthUpdate.new({
        auth_type: DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      dataflows: DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationDataflowsRequest.new({
        anthropic_cloud_cost_metrics: DatadogAPIClient::V2::AnthropicUsageAndCostsCloudCostMetricsIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "anthropic-acme",
    }),
    id: "9b4c7e2a-1d6f-4a3b-8e5c-0f2d7a9b6c18",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_anthropic_usage_and_costs_integration_account("account_id", body)
