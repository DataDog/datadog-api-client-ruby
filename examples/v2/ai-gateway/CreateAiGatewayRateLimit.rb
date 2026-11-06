# Create an AI Gateway rate limit returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_ai_gateway_rate_limit".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayRateLimitCreateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayRateLimitCreateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayRateLimitCreateAttributes.new({
      input_tokens_per_minute: nil,
      mode: DatadogAPIClient::V2::AiGatewayRateLimitMode::ALERT,
      name: "Default rate limit",
      output_tokens_per_minute: nil,
      requests_per_minute: 600,
      selector: [
        DatadogAPIClient::V2::AiGatewayRateLimitSelectorEntry.new({
          dim: "user_id",
          per_value: true,
          values: [
            "11111111-1111-1111-1111-111111111111",
          ],
        }),
      ],
      team_id: "00000000-0000-4000-8000-000000000002",
      user_id: "00000000-0000-4000-8000-000000000001",
    }),
    type: DatadogAPIClient::V2::AiGatewayRateLimitType::RATE_LIMITS,
  }),
})
p api_instance.create_ai_gateway_rate_limit(body)
