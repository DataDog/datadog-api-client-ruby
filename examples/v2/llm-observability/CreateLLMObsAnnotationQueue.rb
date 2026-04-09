# Create an LLM Observability annotation queue returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_annotation_queue".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsAnnotationQueueRequest.new({
  data: DatadogAPIClient::V2::LLMObsAnnotationQueueDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsAnnotationQueueDataAttributesRequest.new({
      description: "Queue for annotating customer support traces",
      name: "My annotation queue",
      project_id: "a33671aa-24fd-4dcd-9b33-a8ec7dde7751",
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationQueueType::QUEUES,
  }),
})
p api_instance.create_llm_obs_annotation_queue(body)
