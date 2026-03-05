# Delete LLM Observability dataset records returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_dataset_records".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDeleteDatasetRecordsRequest.new({
  data: DatadogAPIClient::V2::LLMObsDeleteDatasetRecordsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDeleteDatasetRecordsDataAttributesRequest.new({
      record_ids: [
        "rec-7c3f5a1b-9e2d-4f8a-b1c6-3d7e9f0a2b4c",
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsRecordType::RECORDS,
  }),
})
api_instance.delete_llm_obs_dataset_records("project_id", "dataset_id", body)
