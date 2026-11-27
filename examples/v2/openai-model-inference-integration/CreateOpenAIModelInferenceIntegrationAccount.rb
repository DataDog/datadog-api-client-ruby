# Create an OpenAI Model Inference account returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_open_ai_model_inference_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAPI.new

body = DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountCreateRequest.new({
  data: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountCreateData.new({
    attributes: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountCreateAttributes.new({
      authentication: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountBearerTokenAuthRequest.new({
        auth_type: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountBearerTokenAuthType::BEARER_TOKEN,
        token: "your-token",
      }),
      dataflows: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationDataflowsRequest.new({
        openai_llm_completions: DatadogAPIClient::V2::OpenAIModelInferenceLLMCompletionsIntegrationDataflowRequest.new({
          enabled: true,
        }),
        openai_project_cloud_cost_data: DatadogAPIClient::V2::OpenAIModelInferenceProjectCloudCostDataIntegrationDataflowRequest.new({
          enabled: true,
        }),
      }),
      name: "openai-model-inference-acme",
      settings: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountSettingsRequest.new({
        custom_tags: "team:ai,env:prod",
      }),
    }),
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.create_open_ai_model_inference_integration_account(body)
