# Create an LLM Observability annotation queue returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_annotation_queue".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsAnnotationQueueRequest.new({
  data: DatadogAPIClient::V2::LLMObsAnnotationQueueDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsAnnotationQueueDataAttributesRequest.new({
      annotation_schema: DatadogAPIClient::V2::LLMObsAnnotationSchema.new({
        label_schemas: [
          DatadogAPIClient::V2::LLMObsLabelSchema.new({
            description: "Rating of the response quality.",
            has_assessment: false,
            has_reasoning: false,
            id: "ab12cd34",
            is_assessment: false,
            is_integer: false,
            is_required: true,
            max: 5.0,
            min: 0.0,
            name: "quality",
            type: DatadogAPIClient::V2::LLMObsLabelSchemaType::SCORE,
            values: [
              "good",
              "bad",
              "neutral",
            ],
          }),
        ],
      }),
      description: "Queue for annotating customer support traces",
      name: "My annotation queue",
      project_id: "a33671aa-24fd-4dcd-9b33-a8ec7dde7751",
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationQueueType::QUEUES,
  }),
})
p api_instance.create_llm_obs_annotation_queue(body)
