# Create a new Agent Observability prompt version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_prompt_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AgentObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsCreatePromptVersionRequest.new({
  data: DatadogAPIClient::V2::LLMObsCreatePromptVersionData.new({
    attributes: DatadogAPIClient::V2::LLMObsCreatePromptVersionDataAttributes.new({
      env_ids: [],
      labels: [
        DatadogAPIClient::V2::LLMObsPromptVersionLabel::PRODUCTION,
      ],
      template: "You are a helpful assistant for .",
    }),
    type: DatadogAPIClient::V2::LLMObsPromptVersionType::PROMPT_TEMPLATE_VERSIONS,
  }),
})
p api_instance.create_llm_obs_prompt_version("prompt_id", body)
