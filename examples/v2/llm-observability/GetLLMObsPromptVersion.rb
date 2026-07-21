# Get a specific LLM Observability prompt version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_llm_obs_prompt_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

# there is a valid "prompt" in the system
PROMPT_DATA_ATTRIBUTES_PROMPT_ID = ENV["PROMPT_DATA_ATTRIBUTES_PROMPT_ID"]

# there is a valid "prompt_version" in the system
PROMPT_VERSION_DATA_ATTRIBUTES_VERSION = ENV["PROMPT_VERSION_DATA_ATTRIBUTES_VERSION"]
p api_instance.get_llm_obs_prompt_version(PROMPT_DATA_ATTRIBUTES_PROMPT_ID, PROMPT_VERSION_DATA_ATTRIBUTES_VERSION.to_i)
