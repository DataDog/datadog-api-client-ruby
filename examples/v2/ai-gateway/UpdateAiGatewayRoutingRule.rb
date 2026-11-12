# Update an AI Gateway routing rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_routing_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayRoutingRuleReplaceRequest.new({
  data: DatadogAPIClient::V2::AiGatewayRoutingRuleReplaceData.new({
    attributes: DatadogAPIClient::V2::AiGatewayRoutingRuleReplaceAttributes.new({
      expected_updated_at: "2026-08-24T12:00:00Z",
      removed_target_ids: [
        901,
      ],
      tiers: [
        DatadogAPIClient::V2::AiGatewayRoutingRuleTierRequest.new({
          classifier: DatadogAPIClient::V2::AiGatewayRoutingClassifierRequest.new({
            confidence_threshold: 0.5,
            context: "Requests come from engineers.",
            model: "gpt-6-luna",
            provider: "openai",
          }),
          ordering: DatadogAPIClient::V2::AiGatewayNullableRoutingRuleTierOrdering::CONFIGURED,
          targets: [
            DatadogAPIClient::V2::AiGatewayRoutingRuleTargetRequest.new({
              default: false,
              id: 901,
              model: "gpt-5.2-codex",
              model_id: 101,
              provider: "prod-us",
              reasoning_level: DatadogAPIClient::V2::AiGatewayRoutingReasoningLevel::MEDIUM,
              rubric: "Short factual questions.",
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
