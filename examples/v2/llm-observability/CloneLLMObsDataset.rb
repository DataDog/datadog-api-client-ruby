# Clone an LLM Observability dataset returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.clone_llm_obs_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDatasetCloneRequest.new({
  data: DatadogAPIClient::V2::LLMObsDatasetCloneDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDatasetCloneDataAttributesRequest.new({
      description: "Clone of the original dataset for experimentation.",
      name: "My cloned dataset",
    }),
    id: "9f64e5c7-dc5a-45c8-a17c-1b85f0bec97d",
    type: DatadogAPIClient::V2::LLMObsDatasetType::DATASETS,
  }),
})
p api_instance.clone_llm_obs_dataset("project_id", "dataset_id", body)
