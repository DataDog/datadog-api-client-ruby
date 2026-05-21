# Run an LLM inference returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_integration_inference".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsIntegrationInferenceRequest.new({
  anthropic_metadata: DatadogAPIClient::V2::LLMObsAnthropicMetadata.new({
    effort: DatadogAPIClient::V2::LLMObsAnthropicEffort::MEDIUM,
    thinking: DatadogAPIClient::V2::LLMObsAnthropicThinkingConfig.new({
      budget_tokens: 1024,
      type: DatadogAPIClient::V2::LLMObsAnthropicThinkingType::ENABLED,
    }),
  }),
  azure_openai_metadata: DatadogAPIClient::V2::LLMObsAzureOpenAIMetadata.new({
    deployment_id: "my-gpt4-deployment",
    model_version: "0613",
    resource_name: "my-azure-resource",
  }),
  bedrock_metadata: DatadogAPIClient::V2::LLMObsBedrockMetadata.new({
    region: "us-east-1",
  }),
  frequency_penalty: 0.0,
  json_schema: '{"type":"object","properties":{"answer":{"type":"string"}}}',
  max_completion_tokens: 1024,
  max_tokens: 1024,
  messages: [
    DatadogAPIClient::V2::LLMObsInferenceMessage.new({
      content: "What is the capital of France?",
      contents: [
        DatadogAPIClient::V2::LLMObsInferenceContent.new({
          type: "text",
          value: DatadogAPIClient::V2::LLMObsInferenceContentValue.new({
            text: "Hello, how can I help you?",
            tool_call: DatadogAPIClient::V2::LLMObsInferenceToolCall.new({
              arguments: {
                "location": "San Francisco",
              },
              name: "get_weather",
              tool_id: "call_abc123",
              type: "function",
            }),
            tool_call_result: DatadogAPIClient::V2::LLMObsInferenceToolResult.new({
              name: "get_weather",
              result: "The weather in San Francisco is 68°F and sunny.",
              tool_id: "call_abc123",
              type: "function",
            }),
          }),
        }),
      ],
      id: "msg_001",
      role: "user",
      tool_calls: [
        DatadogAPIClient::V2::LLMObsInferenceToolCall.new({
          arguments: {
            "location": "San Francisco",
          },
          name: "get_weather",
          tool_id: "call_abc123",
          type: "function",
        }),
      ],
      tool_results: [
        DatadogAPIClient::V2::LLMObsInferenceToolResult.new({
          name: "get_weather",
          result: "The weather in San Francisco is 68°F and sunny.",
          tool_id: "call_abc123",
          type: "function",
        }),
      ],
    }),
  ],
  model_id: "gpt-4o",
  openai_metadata: DatadogAPIClient::V2::LLMObsOpenAIMetadata.new({
    reasoning_effort: DatadogAPIClient::V2::LLMObsOpenAIReasoningEffort::MEDIUM,
    reasoning_summary: DatadogAPIClient::V2::LLMObsOpenAIReasoningSummary::AUTO,
  }),
  presence_penalty: 0.0,
  temperature: 0.7,
  tools: [
    DatadogAPIClient::V2::LLMObsInferenceTool.new({
      function: DatadogAPIClient::V2::LLMObsInferenceFunction.new({
        description: "Get the current weather for a location.",
        name: "get_weather",
        parameters: {
          "properties": "{'location': {'type': 'string'}}", "type": "object",
        },
      }),
      type: "function",
    }),
  ],
  top_k: 50,
  top_p: 1.0,
  vertex_ai_metadata: DatadogAPIClient::V2::LLMObsVertexAIMetadata.new({
    location: "us-central1",
    project: "my-gcp-project",
    project_ids: [
      "my-gcp-project",
    ],
  }),
})
p api_instance.create_llm_obs_integration_inference(LLMObsIntegrationName::OPENAI, "account_id", body)
