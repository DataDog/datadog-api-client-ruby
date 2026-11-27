# Update an OpenAI Usage and Costs account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_open_ai_usage_and_costs_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAPI.new

body = DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountBearerTokenAuthUpdate.new({
        auth_type: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      dataflows: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationDataflowsRequest.new({
        openai_cloud_cost_data: DatadogAPIClient::V2::OpenAIUsageAndCostsCloudCostDataIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "openai-usage-and-costs-acme",
      settings: DatadogAPIClient::V2::OpenAIUsageAndCostsIntegrationAccountSettingsUpdate.new({
        custom_tags: "team:ai,env:prod",
      }),
    }),
    id: "9c4e7a2b-1d5f-4e8a-b3c6-0f2d8a6e4b17",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_open_ai_usage_and_costs_integration_account("account_id", body)
