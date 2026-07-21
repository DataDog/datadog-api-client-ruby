# List versions of an LLM Observability prompt returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_llm_obs_prompt_versions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

# there is a valid "prompt" in the system
PROMPT_DATA_ATTRIBUTES_PROMPT_ID = ENV["PROMPT_DATA_ATTRIBUTES_PROMPT_ID"]
p api_instance.list_llm_obs_prompt_versions(PROMPT_DATA_ATTRIBUTES_PROMPT_ID)
