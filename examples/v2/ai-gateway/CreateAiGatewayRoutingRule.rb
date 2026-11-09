# Create an AI Gateway routing rule returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_ai_gateway_routing_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayRoutingRuleCreateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayRoutingRuleCreateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayRoutingRuleCreateAttributes.new({
      slug: "coding",
      tiers: [
        DatadogAPIClient::V2::AiGatewayRoutingRuleTierRequest.new({
          classifier: DatadogAPIClient::V2::AiGatewayRoutingRuleClassifierRequest.new({
            confidence_threshold: 0.6,
            context: "Requests come from the internal coding assistant.",
            model: "gpt-6-luna",
            provider: "prod-us",
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
              rubric: "Writing, reviewing, or debugging code.",
              slug: "coding-fallback",
              type: DatadogAPIClient::V2::AiGatewayRoutingRuleTargetType::MODEL,
              weight: 70,
            }),
          ],
        }),
      ],
    }),
    type: DatadogAPIClient::V2::AiGatewayRoutingRuleType::ROUTING_RULES,
  }),
})
p api_instance.create_ai_gateway_routing_rule(body)
