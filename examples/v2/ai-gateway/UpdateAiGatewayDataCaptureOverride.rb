# Replace an AI Gateway data capture override returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_data_capture_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayCaptureUpdateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayCaptureUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::AiGatewayCaptureUpdateRequestDataAttributes.new({
      configuration_revision: "capture-revision-1",
      metadata_capture: [
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_USAGE,
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_OUTPUT_SIZE,
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_NAMES,
      ],
      mode: DatadogAPIClient::V2::AiGatewayCaptureUpdateRequestDataAttributesMode::METADATA_ONLY,
      name: "Research",
      operation: DatadogAPIClient::V2::AiGatewayCaptureUpdateRequestDataAttributesOperation::CREATE,
      revision: 1,
      scope: DatadogAPIClient::V2::AiGatewayCaptureScope.new({
        tags: {
          env: "prod",
        },
      }),
    }),
    id: "11111111-1111-4111-8111-111111111111",
    type: DatadogAPIClient::V2::AiGatewayCaptureUpdateRequestDataType::DATA_CAPTURE_OVERRIDES,
  }),
})
p api_instance.update_ai_gateway_data_capture_override("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
