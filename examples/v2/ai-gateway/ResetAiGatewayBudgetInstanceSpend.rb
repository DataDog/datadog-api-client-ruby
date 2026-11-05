# Reset a budget instance's spend returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.reset_ai_gateway_budget_instance_spend".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayBudgetInstanceResetRequest.new({
  data: DatadogAPIClient::V2::AiGatewayBudgetInstanceResetData.new({
    attributes: DatadogAPIClient::V2::AiGatewayBudgetInstanceResetAttributes.new({
      instance_key: "v1|7:user_id=36:22222222-2222-2222-2222-222222222222",
      reason: "Credit approved after incorrect usage attribution",
    }),
    type: DatadogAPIClient::V2::AiGatewayBudgetInstanceType::BUDGET_INSTANCES,
  }),
})
p api_instance.reset_ai_gateway_budget_instance_spend("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
