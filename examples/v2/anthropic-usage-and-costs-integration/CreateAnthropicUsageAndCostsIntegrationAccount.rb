# Create an Anthropic Usage and Costs account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_anthropic_usage_and_costs_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAPI.new

body = DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::AnthropicUsageAndCostsIntegrationAccountBearerTokenAuthRequest.new({
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
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_anthropic_usage_and_costs_integration_account(body)
