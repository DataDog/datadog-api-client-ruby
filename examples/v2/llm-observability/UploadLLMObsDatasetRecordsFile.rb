# Upload records to an LLM Observability dataset returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upload_llm_obs_dataset_records_file".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new
p api_instance.upload_llm_obs_dataset_records_file("project_id", "dataset_id")
