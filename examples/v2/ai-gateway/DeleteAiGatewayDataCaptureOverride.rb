# Delete an AI Gateway data capture override returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_ai_gateway_data_capture_override".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayCaptureDeleteRequest.new({
  data: DatadogAPIClient::V2::AiGatewayCaptureDeleteRequestData.new({
    attributes: DatadogAPIClient::V2::AiGatewayCaptureDeleteRequestDataAttributes.new({
      configuration_revision: "capture-revision-1",
      mode: DatadogAPIClient::V2::AiGatewayCaptureDeleteRequestDataAttributesMode::METADATA_ONLY,
      name: "Research",
      operation: DatadogAPIClient::V2::AiGatewayCaptureDeleteRequestDataAttributesOperation::CREATE,
      revision: 1,
      scope: DatadogAPIClient::V2::AiGatewayCaptureScope.new({
        tags: {
          env: "prod",
        },
      }),
    }),
    id: "11111111-1111-4111-8111-111111111111",
    type: DatadogAPIClient::V2::AiGatewayCaptureDeleteRequestDataType::DATA_CAPTURE_OVERRIDES,
  }),
})
api_instance.delete_ai_gateway_data_capture_override("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
