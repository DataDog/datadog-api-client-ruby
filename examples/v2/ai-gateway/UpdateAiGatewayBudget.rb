# Update an AI Gateway budget returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_budget".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayBudgetUpdateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayBudgetUpdateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayBudgetUpdateAttributes.new({
      apply_to_current_period: false,
      capacity_microcents: 120000000,
      enabled: true,
      enforcement: DatadogAPIClient::V2::AiGatewayBudgetEnforcement::BLOCK,
      name: "Coding agents",
      reason: "Temporary capacity increase approved for an incident",
      track_existing: false,
      warning_threshold: 0.8,
    }),
    id: "11111111-1111-1111-1111-111111111111",
    type: DatadogAPIClient::V2::AiGatewayBudgetType::BUDGETS,
  }),
})
p api_instance.update_ai_gateway_budget("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
