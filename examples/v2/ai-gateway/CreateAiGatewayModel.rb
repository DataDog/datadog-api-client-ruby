# Add a model to an AI Gateway provider returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_ai_gateway_model".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayModelCreateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayModelCreateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayModelCreateAttributes.new({
      model_id_canonical: "gpt-5.2-codex",
      model_id_wire: "gpt-5.2-codex-20260801",
      supported_operations: [
        DatadogAPIClient::V2::AiGatewaySupportedOperation::OPENAI_CHAT_COMPLETIONS,
      ],
    }),
    type: DatadogAPIClient::V2::AiGatewayModelCatalogEntryType::MODEL_CATALOG_ENTRIES,
  }),
})
p api_instance.create_ai_gateway_model(9223372036854775807, body)
