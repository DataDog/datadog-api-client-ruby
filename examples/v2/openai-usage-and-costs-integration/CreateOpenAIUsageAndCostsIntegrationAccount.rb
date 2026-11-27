# Create an OpenAI Usage and Costs account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_open_ai_usage_and_costs_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAPI.new

body = DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountBearerTokenAuthRequest.new({
        auth_type: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      dataflows: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationDataflowsRequest.new({
        openai_cloud_cost_data: DatadogAPIClient::V2::OpenAIUsageAndCostsCloudCostDataIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "openai-usage-and-costs-acme",
      settings: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountSettingsRequest.new({
        custom_tags: "team:ai,env:prod",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_open_ai_usage_and_costs_integration_account(body)
