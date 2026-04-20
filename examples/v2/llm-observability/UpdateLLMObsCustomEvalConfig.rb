# Create or update a custom evaluator configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_custom_eval_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsCustomEvalConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsCustomEvalConfigUpdateData.new({
    attributes: DatadogAPIClient::V2::LLMObsCustomEvalConfigUpdateAttributes.new({
      category: "Custom",
      eval_name: "my-custom-evaluator",
      llm_judge_config: DatadogAPIClient::V2::LLMObsCustomEvalConfigLLMJudgeConfig.new({
        assessment_criteria: DatadogAPIClient::V2::LLMObsCustomEvalConfigAssessmentCriteria.new({
          max_threshold: 1.0,
          min_threshold: 0.7,
          pass_values: [
            "pass",
            "yes",
          ],
          pass_when: true,
        }),
        inference_params: DatadogAPIClient::V2::LLMObsCustomEvalConfigInferenceParams.new({
          frequency_penalty: 0.0,
          max_tokens: 1024,
          presence_penalty: 0.0,
          temperature: 0.7,
          top_k: 50,
          top_p: 1.0,
        }),
        last_used_library_prompt_template_name: "sentiment-analysis-v1",
        modified_library_prompt_template: false,
        output_schema: nil,
        parsing_type: DatadogAPIClient::V2::LLMObsCustomEvalConfigParsingType::STRUCTURED_OUTPUT,
        prompt_template: [
          DatadogAPIClient::V2::LLMObsCustomEvalConfigPromptMessage.new({
            content: "Rate the quality of the following response:",
            contents: [
              DatadogAPIClient::V2::LLMObsCustomEvalConfigPromptContent.new({
                type: "text",
                value: DatadogAPIClient::V2::LLMObsCustomEvalConfigPromptContentValue.new({
                  text: "What is the sentiment of this review?",
                  tool_call: DatadogAPIClient::V2::LLMObsCustomEvalConfigPromptToolCall.new({
                    arguments: '{"location": "San Francisco"}',
                    id: "call_abc123",
                    name: "get_weather",
                    type: "function",
                  }),
                  tool_call_result: DatadogAPIClient::V2::LLMObsCustomEvalConfigPromptToolResult.new({
                    name: "get_weather",
                    result: "sunny, 72F",
                    tool_id: "call_abc123",
                    type: "function",
                  }),
                }),
              }),
            ],
            role: "user",
          }),
        ],
      }),
      llm_provider: DatadogAPIClient::V2::LLMObsCustomEvalConfigLLMProvider.new({
        bedrock: DatadogAPIClient::V2::LLMObsCustomEvalConfigBedrockOptions.new({
          region: "us-east-1",
        }),
        integration_account_id: "my-account-id",
        integration_provider: DatadogAPIClient::V2::LLMObsCustomEvalConfigIntegrationProvider::OPENAI,
        model_name: "gpt-4o",
        vertex_ai: DatadogAPIClient::V2::LLMObsCustomEvalConfigVertexAIOptions.new({
          location: "us-central1",
          project: "my-gcp-project",
        }),
      }),
      target: DatadogAPIClient::V2::LLMObsCustomEvalConfigTarget.new({
        application_name: "my-llm-app",
        enabled: true,
        eval_scope: DatadogAPIClient::V2::LLMObsCustomEvalConfigEvalScope::SPAN,
        filter: "@service:my-service",
        root_spans_only: true,
        sampling_percentage: 50.0,
      }),
    }),
    id: "my-custom-evaluator",
    type: DatadogAPIClient::V2::LLMObsCustomEvalConfigType::EVALUATOR_CONFIG,
  }),
})
p api_instance.update_llm_obs_custom_eval_config("eval_name", body)
