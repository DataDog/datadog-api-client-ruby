# Delete LLM Observability datasets returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_datasets".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDeleteDatasetsRequest.new({
  data: DatadogAPIClient::V2::LLMObsDeleteDatasetsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDeleteDatasetsDataAttributesRequest.new({
      dataset_ids: [
        "9f64e5c7-dc5a-45c8-a17c-1b85f0bec97d",
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsDatasetType::DATASETS,
  }),
})
api_instance.delete_llm_obs_datasets("project_id", body)
