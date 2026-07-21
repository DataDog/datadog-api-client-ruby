# Create an LLM Observability prompt returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_prompt".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsCreatePromptRequest.new({
  data: DatadogAPIClient::V2::LLMObsCreatePromptData.new({
    attributes: DatadogAPIClient::V2::LLMObsCreatePromptDataAttributes.new({
      prompt_id: "Example-LLM-Observability",
      title: "Customer Support Assistant",
      template: [
        DatadogAPIClient::V2::LLMObsPromptChatMessage.new({
          content: "You are a helpful customer support assistant for {{company_name}}.",
          role: "system",
        }),
        DatadogAPIClient::V2::LLMObsPromptChatMessage.new({
          content: "Help {{customer_name}} with this question: {{question}}",
          role: "user",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsPromptType::PROMPT_TEMPLATES,
  }),
})
p api_instance.create_llm_obs_prompt(body)
