# Append records to an LLM Observability dataset returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_dataset_records".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDatasetRecordsRequest.new({
  data: DatadogAPIClient::V2::LLMObsDatasetRecordsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDatasetRecordsDataAttributesRequest.new({
      records: [
        DatadogAPIClient::V2::LLMObsDatasetRecordItem.new({
          expected_output: nil,
          input: nil,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsRecordType::RECORDS,
  }),
})
p api_instance.create_llm_obs_dataset_records("project_id", "dataset_id", body)
