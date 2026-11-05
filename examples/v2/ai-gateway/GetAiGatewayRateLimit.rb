# Get an AI Gateway rate limit returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_ai_gateway_rate_limit".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new
p api_instance.get_ai_gateway_rate_limit("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
