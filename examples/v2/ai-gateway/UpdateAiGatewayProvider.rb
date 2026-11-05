# Update an AI Gateway provider returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_provider".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayProviderUpdateRequest.new({
  data: DatadogAPIClient::V2::AiGatewayProviderUpdateData.new({
    attributes: DatadogAPIClient::V2::AiGatewayProviderUpdateAttributes.new({
      cost_multiplier: 1.0,
      name: "production-us-v2",
    }),
    id: "42",
    type: DatadogAPIClient::V2::AiGatewayProviderType::PROVIDERS,
  }),
})
p api_instance.update_ai_gateway_provider(9223372036854775807, body)
