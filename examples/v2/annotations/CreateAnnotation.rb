# Create an annotation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_annotation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AnnotationsAPI.new

body = DatadogAPIClient::V2::AnnotationCreateRequest.new({
  data: DatadogAPIClient::V2::AnnotationRequestData.new({
    attributes: DatadogAPIClient::V2::AnnotationCreateAttributes.new({
      color: DatadogAPIClient::V2::AnnotationColor::BLUE,
      description: "Deployed v2.3.1 to production.",
      page_id: "dashboard:abc-def-xyz",
      start_time: 1704067200000,
      type: DatadogAPIClient::V2::AnnotationKind::POINT_IN_TIME,
      widget_ids: [
        "1234567890",
      ],
    }),
    type: DatadogAPIClient::V2::AnnotationType::ANNOTATION,
  }),
})
p api_instance.create_annotation(body)
