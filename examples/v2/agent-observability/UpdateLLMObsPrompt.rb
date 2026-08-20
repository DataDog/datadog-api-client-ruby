# Update an Agent Observability prompt returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_prompt".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AgentObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsUpdatePromptRequest.new({
  data: DatadogAPIClient::V2::LLMObsUpdatePromptData.new({
    attributes: DatadogAPIClient::V2::LLMObsUpdatePromptDataAttributes.new({}),
    type: DatadogAPIClient::V2::LLMObsPromptType::PROMPT_TEMPLATES,
  }),
})
p api_instance.update_llm_obs_prompt("prompt_id", body)
