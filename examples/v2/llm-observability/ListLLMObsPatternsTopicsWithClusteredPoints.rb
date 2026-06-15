# List patterns topics with clustered points returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_llm_obs_patterns_topics_with_clustered_points".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
p api_instance.list_llm_obs_patterns_topics_with_clustered_points("config_id")
