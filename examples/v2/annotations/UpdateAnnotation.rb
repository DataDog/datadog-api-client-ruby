# Update an annotation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_annotation".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AnnotationsAPI.new

# there is a valid "annotation" in the system
ANNOTATION_DATA_ID = ENV["ANNOTATION_DATA_ID"]

body = DatadogAPIClient::V2::AnnotationUpdateRequest.new({
  data: DatadogAPIClient::V2::AnnotationRequestData.new({
    attributes: DatadogAPIClient::V2::AnnotationCreateAttributes.new({
      color: DatadogAPIClient::V2::AnnotationColor::GREEN,
      description: "Updated annotation.",
      page_id: "dashboard:abc-def-xyz",
      start_time: 1704067200000,
      type: DatadogAPIClient::V2::AnnotationKind::POINT_IN_TIME,
    }),
    type: DatadogAPIClient::V2::AnnotationType::ANNOTATION,
  }),
})
p api_instance.update_annotation(ANNOTATION_DATA_ID, body)
