# Create an OpenAI LLM Evaluations account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_open_aillm_evaluations_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAPI.new

body = DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountBearerTokenAuthRequest.new({
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
      settings: DatadogAPIClient::V2::OpenAILLMEvaluationsIntegrationAccountSettingsRequest.new({
        custom_tags: "team:ai,env:prod",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_open_aillm_evaluations_integration_account(body)
