# Update an OpenAI Model Inference account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_open_ai_model_inference_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAPI.new

body = DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountUpdateData.new({
    attributes: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountUpdateAttributes.new({
      authentication: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountBearerTokenAuthUpdate.new({
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
      settings: DatadogAPIClient::V2::OpenAIModelInferenceIntegrationAccountSettingsUpdate.new({
        custom_tags: "team:ai,env:prod",
      }),
    }),
    id: "3f8b2c1d-6e4a-4b9f-8c2d-1a7e5b9c0f63",
    type: DatadogAPIClient::V2::IntegrationAccountType::INTEGRATION_ACCOUNT,
  }),
})
p api_instance.update_open_ai_model_inference_integration_account("account_id", body)
