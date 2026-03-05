# Update an LLM Observability dataset returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDatasetUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsDatasetUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDatasetUpdateDataAttributesRequest.new({}),
    type: DatadogAPIClient::V2::LLMObsDatasetType::DATASETS,
  }),
})
p api_instance.update_llm_obs_dataset("project_id", "dataset_id", body)
