# Add annotation queue interactions returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_annotation_queue_interactions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsRequest.new({
  data: DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsDataAttributesRequest.new({
      interactions: [
        DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionItem.new({
          content_id: "trace-abc-123",
          type: DatadogAPIClient::V2::LLMObsInteractionType::TRACE,
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsType::INTERACTIONS,
  }),
})
p api_instance.create_llm_obs_annotation_queue_interactions("queue_id", body)
