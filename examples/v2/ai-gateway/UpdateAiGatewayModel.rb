# Update a model for an AI Gateway provider returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_model".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayModelUpdateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayModelUpdateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayModelUpdateAttributes.new({
      model_id_wire: "gpt-5.2-codex-20260801",
      supported_operations: [
        DatadogAPIClient::V2::AiGatewaySupportedOperation::OPENAI_CHAT_COMPLETIONS,
      ],
    }),
    id: "101",
    type: DatadogAPIClient::V2::AiGatewayModelCatalogEntryType::MODEL_CATALOG_ENTRIES,
  }),
})
p api_instance.update_ai_gateway_model(9223372036854775807, "canonical", body)
