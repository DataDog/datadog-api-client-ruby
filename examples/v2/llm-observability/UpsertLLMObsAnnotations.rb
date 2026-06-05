# Create or update annotations returns "OK — annotations created or updated. Per-item errors are listed in `errors`."
# response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.upsert_llm_obs_annotations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsAnnotationsRequest.new({
  data: DatadogAPIClient::V2::LLMObsAnnotationsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsAnnotationsDataAttributesRequest.new({
      annotations: [
        DatadogAPIClient::V2::LLMObsUpsertAnnotationItem.new({
          interaction_id: "00000000-0000-0000-0000-000000000001",
          label_values: [
            DatadogAPIClient::V2::LLMObsAnnotationLabelValue.new({
              label_schema_id: "abc-123",
              value: "good",
            }),
            DatadogAPIClient::V2::LLMObsAnnotationLabelValue.new({
              label_schema_id: "ef56gh78",
              value: "positive",
            }),
          ],
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationsType::ANNOTATIONS,
  }),
})
p api_instance.upsert_llm_obs_annotations("queue_id", body)
