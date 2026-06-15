# Delete a patterns configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_patterns_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
api_instance.delete_llm_obs_patterns_config("config_id")
