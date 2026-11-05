# Replace an AI Gateway routing rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_routing_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayRoutingRuleReplaceRequest.new({
  data: DatadogAPIClient::V2::AiGatewayRoutingRuleReplaceData.new({
    attributes: DatadogAPIClient::V2::AiGatewayRoutingRuleReplaceAttributes.new({
      tiers: [
        DatadogAPIClient::V2::AiGatewayRoutingRuleTierRequest.new({
          ordering: DatadogAPIClient::V2::AiGatewayNullableRoutingRuleTierOrdering::CONFIGURED,
          targets: [
            DatadogAPIClient::V2::AiGatewayRoutingRuleTargetRequest.new({
              id: 901,
              model: "gpt-5.2-codex",
              model_id: 101,
              provider: "prod-us",
              reasoning_level: DatadogAPIClient::V2::AiGatewayRoutingReasoningLevel::MEDIUM,
              slug: "coding-fallback",
              type: DatadogAPIClient::V2::AiGatewayRoutingRuleTargetType::MODEL,
              weight: 70,
            }),
          ],
        }),
      ],
    }),
    id: "coding",
    type: DatadogAPIClient::V2::AiGatewayRoutingRuleType::ROUTING_RULES,
  }),
})
p api_instance.update_ai_gateway_routing_rule("slug", body)
