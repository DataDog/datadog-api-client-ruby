# List LLM Observability prompts returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_llm_obs_prompts".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

# there is a valid "prompt" in the system
PROMPT_DATA_ATTRIBUTES_PROMPT_ID = ENV["PROMPT_DATA_ATTRIBUTES_PROMPT_ID"]
opts = {
  filter_prompt_id: PROMPT_DATA_ATTRIBUTES_PROMPT_ID,
}
p api_instance.list_llm_obs_prompts(opts)
