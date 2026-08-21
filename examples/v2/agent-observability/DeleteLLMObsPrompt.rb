# Delete an Agent Observability prompt returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_prompt".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AgentObservabilityAPI.new
p api_instance.delete_llm_obs_prompt("prompt_id")
