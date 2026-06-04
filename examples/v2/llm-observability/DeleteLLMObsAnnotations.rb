# Delete annotations returns "OK — annotations deleted. Errors for annotations that could not be deleted are listed in
# `errors`." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_llm_obs_annotations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsDeleteAnnotationsRequest.new({
  data: DatadogAPIClient::V2::LLMObsDeleteAnnotationsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsDeleteAnnotationsDataAttributesRequest.new({
      annotation_ids: [
        "00000000-0000-0000-0000-000000000000",
        "00000000-0000-0000-0000-000000000001",
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsAnnotationsType::ANNOTATIONS,
  }),
})
p api_instance.delete_llm_obs_annotations("queue_id", body)
