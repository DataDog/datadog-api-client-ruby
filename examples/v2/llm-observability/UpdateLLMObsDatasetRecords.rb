# Update LLM Observability dataset records returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_dataset_records".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDatasetRecordsUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsDatasetRecordsUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDatasetRecordsUpdateDataAttributesRequest.new({
      records: [
        DatadogAPIClient::V2::LLMObsDatasetRecordUpdateItem.new({
          expected_output: nil,
          id: "rec-7c3f5a1b-9e2d-4f8a-b1c6-3d7e9f0a2b4c",
          input: nil,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsRecordType::RECORDS,
  }),
})
p api_instance.update_llm_obs_dataset_records("project_id", "dataset_id", body)
