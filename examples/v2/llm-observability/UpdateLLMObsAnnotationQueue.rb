# Update an LLM Observability annotation queue returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_annotation_queue".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsAnnotationQueueUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsAnnotationQueueUpdateDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsAnnotationQueueUpdateDataAttributesRequest.new({
      description: "Updated description",
      name: "Updated queue name",
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationQueueType::QUEUES,
  }),
})
p api_instance.update_llm_obs_annotation_queue("queue_id", body)
