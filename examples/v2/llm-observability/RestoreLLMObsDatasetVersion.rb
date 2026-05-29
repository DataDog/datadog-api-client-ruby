# Restore an LLM Observability dataset version returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.restore_llm_obs_dataset_version".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDatasetRestoreVersionRequest.new({
  data: DatadogAPIClient::V2::LLMObsDatasetRestoreVersionDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDatasetRestoreVersionDataAttributesRequest.new({
      dataset_version: 1,
    }),
    id: "9f64e5c7-dc5a-45c8-a17c-1b85f0bec97d",
    type: DatadogAPIClient::V2::LLMObsDatasetType::DATASETS,
  }),
})
p api_instance.restore_llm_obs_dataset_version("project_id", "dataset_id", body)
