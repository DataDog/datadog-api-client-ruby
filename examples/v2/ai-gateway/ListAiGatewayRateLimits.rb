# List AI Gateway rate limits returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_ai_gateway_rate_limits".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new
p api_instance.list_ai_gateway_rate_limits()
