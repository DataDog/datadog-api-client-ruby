# Update annotation queue label schema returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_llm_obs_annotation_queue_label_schema".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsAnnotationQueueLabelSchemaUpdateRequest.new({
  data: DatadogAPIClient::V2::LLMObsAnnotationQueueLabelSchemaUpdateData.new({
    attributes: DatadogAPIClient::V2::LLMObsAnnotationQueueLabelSchemaUpdateAttributes.new({
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
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationQueueType::QUEUES,
  }),
})
p api_instance.update_llm_obs_annotation_queue_label_schema("queue_id", body)
