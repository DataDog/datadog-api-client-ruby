# Create a new LLM Observability prompt version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_prompt_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

# there is a valid "prompt" in the system
PROMPT_DATA_ATTRIBUTES_PROMPT_ID = ENV["PROMPT_DATA_ATTRIBUTES_PROMPT_ID"]

body = DatadogAPIClient::V2::LLMObsCreatePromptVersionRequest.new({
  data: DatadogAPIClient::V2::LLMObsCreatePromptVersionData.new({
    attributes: DatadogAPIClient::V2::LLMObsCreatePromptVersionDataAttributes.new({
      template: [
        DatadogAPIClient::V2::LLMObsPromptChatMessage.new({
          content: "You are a concise customer support assistant for {{company_name}}.",
          role: "system",
        }),
        DatadogAPIClient::V2::LLMObsPromptChatMessage.new({
          content: "Answer {{customer_name}}'s question: {{question}}",
          role: "user",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsPromptVersionType::PROMPT_TEMPLATE_VERSIONS,
  }),
})
p api_instance.create_llm_obs_prompt_version(PROMPT_DATA_ATTRIBUTES_PROMPT_ID, body)
