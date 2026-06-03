# List LLM Observability experiment spans (v1) returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_llm_obs_experiment_events_v1".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
p api_instance.list_llm_obs_experiment_events_v1("experiment_id")
