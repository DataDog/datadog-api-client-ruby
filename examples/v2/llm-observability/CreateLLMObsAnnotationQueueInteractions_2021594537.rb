# Add a display_block interaction returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_annotation_queue_interactions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsRequest.new({
  data: DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsDataAttributesRequest.new({
      interactions: [
        DatadogAPIClient::V2::LLMObsDisplayBlockInteractionItem.new({
          type: DatadogAPIClient::V2::LLMObsDisplayBlockInteractionType::DISPLAY_BLOCK,
          display_block: [
            DatadogAPIClient::V2::LLMObsContentBlock.new({
              type: DatadogAPIClient::V2::LLMObsContentBlockType::MARKDOWN,
              content: "## Triage Instructions",
            }),
          ],
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationQueueInteractionsType::INTERACTIONS,
  }),
})
p api_instance.create_llm_obs_annotation_queue_interactions("queue_id", body)
