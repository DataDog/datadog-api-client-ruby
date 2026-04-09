# Delete annotation queue interactions returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_annotation_queue_interactions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDeleteAnnotationQueueInteractionsRequest.new({
  data: DatadogAPIClient::V2::LLMObsDeleteAnnotationQueueInteractionsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDeleteAnnotationQueueInteractionsDataAttributesRequest.new({
      interaction_ids: [
        "00000000-0000-0000-0000-000000000000",
        "00000000-0000-0000-0000-000000000001",
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsType::INTERACTIONS,
  }),
})
api_instance.delete_llm_obs_annotation_queue_interactions("queue_id", body)
