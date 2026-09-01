# Get an annotated queue interaction returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_llm_obs_annotated_interaction".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AgentObservabilityAPI.new
p api_instance.get_llm_obs_annotated_interaction("queue_id", "interaction_id")
