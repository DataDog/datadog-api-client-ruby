# Create an AI Gateway budget returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_ai_gateway_budget".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayBudgetCreateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayBudgetCreateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayBudgetCreateAttributes.new({
      capacity_microcents: 100000000,
      enforcement: DatadogAPIClient::V2::AiGatewayBudgetEnforcement::BLOCK,
      name: "Coding agents",
      selector: [
        DatadogAPIClient::V2::AiGatewayBudgetSelectorEntry.new({
          dim: "user_id",
          per_value: true,
          values: [
            "11111111-1111-1111-1111-111111111111",
          ],
        }),
      ],
      tags: {
        model: "gpt-5.2-codex",
      },
      track_existing: false,
      warning_threshold: 0.9,
      window_policy: DatadogAPIClient::V2::AiGatewayBudgetWindowPolicy::MONTHLY,
    }),
    type: DatadogAPIClient::V2::AiGatewayBudgetType::BUDGETS,
  }),
})
p api_instance.create_ai_gateway_budget(body)
