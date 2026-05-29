# Batch update LLM Observability dataset records returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.batch_update_llm_obs_dataset".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDatasetBatchUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsDatasetBatchUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDatasetBatchUpdateDataAttributesRequest.new({
      create_new_version: true,
      delete_records: [],
      insert_records: [
        DatadogAPIClient::V2::LLMObsDatasetBatchUpdateInsertRecord.new({
          expected_output: nil,
          id: "rec-7c3f5a1b-9e2d-4f8a-b1c6-3d7e9f0a2b4c",
          input: nil,
          tag_operations: DatadogAPIClient::V2::LLMObsDatasetRecordTagOperations.new({
            add: [],
            remove: [],
            set: [],
          }),
          tags: [],
        }),
      ],
      tags: [],
      update_records: [
        DatadogAPIClient::V2::LLMObsDatasetBatchUpdateUpdateRecord.new({
          expected_output: nil,
          id: "rec-7c3f5a1b-9e2d-4f8a-b1c6-3d7e9f0a2b4c",
          input: nil,
          tag_operations: DatadogAPIClient::V2::LLMObsDatasetRecordTagOperations.new({
            add: [],
            remove: [],
            set: [],
          }),
        }),
      ],
    }),
    id: "9f64e5c7-dc5a-45c8-a17c-1b85f0bec97d",
    type: DatadogAPIClient::V2::LLMObsDatasetType::DATASETS,
  }),
})
p api_instance.batch_update_llm_obs_dataset("project_id", "dataset_id", body)
