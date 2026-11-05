# Get AI Gateway governance controls returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_ai_gateway_governance".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new
p api_instance.get_ai_gateway_governance()
