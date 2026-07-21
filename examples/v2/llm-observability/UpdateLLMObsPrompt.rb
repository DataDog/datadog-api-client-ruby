# Update an LLM Observability prompt returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_prompt".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

# there is a valid "prompt" in the system
PROMPT_DATA_ATTRIBUTES_PROMPT_ID = ENV["PROMPT_DATA_ATTRIBUTES_PROMPT_ID"]

body = DatadogAPIClient::V2::LLMObsUpdatePromptRequest.new({
  data: DatadogAPIClient::V2::LLMObsUpdatePromptData.new({
    attributes: DatadogAPIClient::V2::LLMObsUpdatePromptDataAttributes.new({
      title: "Customer Support Assistant",
    }),
    type: DatadogAPIClient::V2::LLMObsPromptType::PROMPT_TEMPLATES,
  }),
})
p api_instance.update_llm_obs_prompt(PROMPT_DATA_ATTRIBUTES_PROMPT_ID, body)
