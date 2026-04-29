# Get annotation queue label schema returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_llm_obs_annotation_queue_label_schema".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
p api_instance.get_llm_obs_annotation_queue_label_schema("queue_id")
