# Update an OpenAI LLM Evaluations account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_open_aillm_evaluations_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAPI.new

body = DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountBearerTokenAuthUpdate.new({
        auth_type: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      dataflows: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationDataflowsRequest.new({
        openai_llm_completions: DatadogAPIClient::V2::OpenAILLMEvaluationsLLMCompletionsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        openai_project_cloud_cost_data: DatadogAPIClient::V2::OpenAILLMEvaluationsProjectCloudCostDataIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "openai-llm-evaluations-acme",
      settings: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountSettingsUpdate.new({
        custom_tags: "team:ai,env:prod",
      }),
    }),
    id: "3f8b2c1d-6e4a-4b9f-8c2d-1a7e5b9c0f63",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_open_aillm_evaluations_integration_account("account_id", body)
