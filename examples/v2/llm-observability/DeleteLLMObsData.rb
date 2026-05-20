# Delete LLM Observability data returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_data".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDataDeletionRequest.new({
  data: DatadogAPIClient::V2::LLMObsDataDeletionRequestData.new({
    attributes: DatadogAPIClient::V2::LLMObsDataDeletionRequestAttributes.new({
      delay: 0,
      from: 1705314600000,
      query: {
        query: "@trace_id:abc123def456",
      },
      to: 1705315200000,
    }),
    type: DatadogAPIClient::V2::LLMObsDataDeletionRequestType::CREATE_DELETION_REQ,
  }),
})
p api_instance.delete_llm_obs_data(body)
