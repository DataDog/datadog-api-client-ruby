# Get a specific Agent Observability prompt version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_llm_obs_prompt_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AgentObservabilityAPI.new
p api_instance.get_llm_obs_prompt_version("prompt_id", 9223372036854775807)
