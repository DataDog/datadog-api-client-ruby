# Get annotated interactions by content IDs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_llm_obs_annotated_interactions_by_trace_i_ds".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
p api_instance.get_llm_obs_annotated_interactions_by_trace_i_ds([])
