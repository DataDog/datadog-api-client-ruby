# Update an Agent Observability prompt version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_prompt_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AgentObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsUpdatePromptVersionRequest.new({
  data: DatadogAPIClient::V2::LLMObsUpdatePromptVersionData.new({
    attributes: DatadogAPIClient::V2::LLMObsUpdatePromptVersionDataAttributes.new({
      env_ids: [],
      labels: [
        DatadogAPIClient::V2::LLMObsPromptVersionLabel::PRODUCTION,
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsPromptVersionType::PROMPT_TEMPLATE_VERSIONS,
  }),
})
p api_instance.update_llm_obs_prompt_version("prompt_id", 9223372036854775807, body)
