# Create an Agent Observability prompt returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_prompt".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AgentObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsCreatePromptRequest.new({
  data: DatadogAPIClient::V2::LLMObsCreatePromptData.new({
    attributes: DatadogAPIClient::V2::LLMObsCreatePromptDataAttributes.new({
      env_ids: [],
      labels: [
        DatadogAPIClient::V2::LLMObsPromptVersionLabel::PRODUCTION,
      ],
      prompt_id: "customer-support-assistant",
      template: "You are a helpful assistant for .",
    }),
    type: DatadogAPIClient::V2::LLMObsPromptType::PROMPT_TEMPLATES,
  }),
})
p api_instance.create_llm_obs_prompt(body)
