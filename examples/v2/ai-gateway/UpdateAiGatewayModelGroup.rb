# Update an AI Gateway model group returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_model_group".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayModelGroupUpdateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayModelGroupUpdateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayModelGroupUpdateAttributes.new({
      allow_fast_mode: true,
      max_reasoning_level: DatadogAPIClient::V2::AiGatewayNullableMaxReasoningLevel::HIGH,
      model_ids: [
        101,
      ],
      name: "Coding models",
      provider_ids: [],
      routing_rule_slugs: [
        "coding-route",
      ],
    }),
    id: "7",
    type: DatadogAPIClient::V2::AiGatewayModelGroupType::MODEL_GROUPS,
  }),
})
p api_instance.update_ai_gateway_model_group("id", body)
