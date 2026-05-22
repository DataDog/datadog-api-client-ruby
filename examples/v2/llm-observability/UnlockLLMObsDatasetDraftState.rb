# Unlock LLM Observability dataset draft state returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.unlock_llm_obs_dataset_draft_state".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
p api_instance.unlock_llm_obs_dataset_draft_state("project_id", "dataset_id")
