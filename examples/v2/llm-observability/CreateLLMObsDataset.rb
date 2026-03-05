# Create an LLM Observability dataset returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDatasetRequest.new({
  data: DatadogAPIClient::V2::LLMObsDatasetDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDatasetDataAttributesRequest.new({
      name: "My LLM Dataset",
    }),
    type: DatadogAPIClient::V2::LLMObsDatasetType::DATASETS,
  }),
})
p api_instance.create_llm_obs_dataset("project_id", body)
