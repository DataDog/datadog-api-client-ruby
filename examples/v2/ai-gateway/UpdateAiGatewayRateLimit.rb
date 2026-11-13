# Update an AI Gateway rate limit returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_rate_limit".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayRateLimitUpdateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayRateLimitUpdateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayRateLimitUpdateAttributes.new({
      cost_microcents_per_minute: nil,
      input_tokens_per_minute: nil,
      mode: DatadogAPIClient::V2::AiGatewayRateLimitMode::ALERT,
      output_tokens_per_minute: nil,
      requests_per_minute: nil,
      tags: nil,
      team_id: nil,
      user_id: nil,
    }),
    id: "11111111-1111-1111-1111-111111111111",
    type: DatadogAPIClient::V2::AiGatewayRateLimitType::RATE_LIMITS,
  }),
})
p api_instance.update_ai_gateway_rate_limit("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
