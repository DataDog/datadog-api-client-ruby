# Delete a model pricing override returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_ai_gateway_model_pricing".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new
api_instance.delete_ai_gateway_model_pricing(9223372036854775807, "canonical")
