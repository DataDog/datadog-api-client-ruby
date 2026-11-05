# Create or replace an AI Gateway routing policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.upsert_ai_gateway_policy".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayPolicyRequest.new({
  data: DatadogAPIClient::V2::AiGatewayPolicyRequestData.new({
    attributes: DatadogAPIClient::V2::AiGatewayPolicyRequestAttributes.new({
      inbound: "coding-agent",
      priority: 1,
      tiers: [
        DatadogAPIClient::V2::AiGatewayPolicyTierRequest.new({
          priority: 1,
          targets: [
            DatadogAPIClient::V2::AiGatewayPolicyTargetRequest.new({
              id: 901,
              model: "gpt-5.2-codex",
              provider: "prod-us",
            }),
          ],
        }),
      ],
    }),
    type: DatadogAPIClient::V2::AiGatewayPolicyType::ROUTING_DOCUMENTS,
  }),
})
p api_instance.upsert_ai_gateway_policy(body)
