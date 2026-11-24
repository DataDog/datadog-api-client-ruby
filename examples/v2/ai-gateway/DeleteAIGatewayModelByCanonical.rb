# Delete a provider model by canonical ID returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_ai_gateway_model_by_canonical".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new
api_instance.delete_ai_gateway_model_by_canonical(9223372036854775807, "canonical")
