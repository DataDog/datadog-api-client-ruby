# Create an AI Gateway model group returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_ai_gateway_model_group".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayModelGroupCreateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayModelGroupCreateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayModelGroupCreateAttributes.new({
      allow_fast_mode: true,
      bindings: [
        DatadogAPIClient::V2::AiGatewayModelGroupBinding.new({
          principals: [
            "user:55555555-5555-5555-5555-555555555555",
          ],
          relation: DatadogAPIClient::V2::AiGatewayModelGroupBindingRelation::RUNNER,
        }),
      ],
      max_reasoning_level: DatadogAPIClient::V2::AiGatewayMaxReasoningLevel::HIGH,
      model_ids: [
        101,
      ],
      name: "Coding models",
      provider_ids: [],
      routing_rule_slugs: [
        "coding-route",
      ],
    }),
    type: DatadogAPIClient::V2::AiGatewayModelGroupType::MODEL_GROUPS,
  }),
})
p api_instance.create_ai_gateway_model_group(body)
