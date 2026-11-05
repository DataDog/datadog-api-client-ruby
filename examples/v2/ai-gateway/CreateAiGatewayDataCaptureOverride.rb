# Create an AI Gateway data capture override returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_ai_gateway_data_capture_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayCaptureCreateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayCaptureCreateRequestData.new({
    attributes: DatadogAPIClient::V2::AiGatewayCaptureCreateRequestDataAttributes.new({
      configuration_revision: "capture-revision-1",
      metadata_capture: [
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_USAGE,
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_OUTPUT_SIZE,
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_NAMES,
      ],
      mode: DatadogAPIClient::V2::AiGatewayCaptureCreateRequestDataAttributesMode::METADATA_ONLY,
      name: "Research",
      operation: DatadogAPIClient::V2::AiGatewayCaptureCreateRequestDataAttributesOperation::CREATE,
      revision: 1,
      scope: DatadogAPIClient::V2::AiGatewayCaptureScope.new({
        tags: {
          env: "prod",
        },
      }),
    }),
    id: "11111111-1111-4111-8111-111111111111",
    type: DatadogAPIClient::V2::AiGatewayCaptureCreateRequestDataType::DATA_CAPTURE_OVERRIDES,
  }),
})
p api_instance.create_ai_gateway_data_capture_override(body)
