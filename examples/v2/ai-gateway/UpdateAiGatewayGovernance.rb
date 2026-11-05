# Replace AI Gateway governance controls returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_governance".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayGovernanceReplaceRequest.new({
  data: DatadogAPIClient::V2::AiGatewayGovernanceReplaceData.new({
    attributes: DatadogAPIClient::V2::AiGatewayGovernanceReplaceAttributes.new({
      data_capture_mode: DatadogAPIClient::V2::AiGatewayDataCaptureMode::METADATA_ONLY,
      metadata_capture: [
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_USAGE,
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_OUTPUT_SIZE,
        DatadogAPIClient::V2::AiGatewayMetadataCaptureItem::TOOL_NAMES,
      ],
      zdr_mode: DatadogAPIClient::V2::AiGatewayZDRMode::OFF,
    }),
    id: "organization",
    type: DatadogAPIClient::V2::AiGatewayGovernanceType::GOVERNANCE,
  }),
})
p api_instance.update_ai_gateway_governance(body)
