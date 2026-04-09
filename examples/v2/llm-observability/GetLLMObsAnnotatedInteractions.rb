# Get annotated queue interactions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_llm_obs_annotated_interactions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
p api_instance.get_llm_obs_annotated_interactions("queue_id")
