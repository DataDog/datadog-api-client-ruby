# Override a budget instance's capacity returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.override_ai_gateway_budget_instance_capacity".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayBudgetInstanceCapacityOverrideRequest.new({
  data: DatadogAPIClient::V2::AiGatewayBudgetInstanceCapacityOverrideData.new({
    attributes: DatadogAPIClient::V2::AiGatewayBudgetInstanceCapacityOverrideAttributes.new({
      capacity_microcents: 250000000,
      instance_key: "v1|7:user_id=36:22222222-2222-2222-2222-222222222222",
      reason: "Temporary increase for a launch week",
    }),
    type: DatadogAPIClient::V2::AiGatewayBudgetInstanceType::BUDGET_INSTANCES,
  }),
})
p api_instance.override_ai_gateway_budget_instance_capacity("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
