# Set a model pricing override returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_ai_gateway_model_pricing".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AIGatewayAPI.new

body = DatadogAPIClient::V2::AiGatewayModelPricingRequest.new({
  data: DatadogAPIClient::V2::AiGatewayModelPricingRequestData.new({
    attributes: DatadogAPIClient::V2::AiGatewayModelPricingRequestAttributes.new({
      pricing_config: DatadogAPIClient::V2::AiGatewayModelPricingCustomRequestConfig.new({
        rates: DatadogAPIClient::V2::AiGatewayModelPricingRequiredRates.new({
          cache_read_cost_per_mtok: 0.0,
          cache_write_cost_per_mtok: 0.0,
          non_cached_input_cost_per_mtok: 0.0,
          output_cost_per_mtok: 0.0,
        }),
        source: DatadogAPIClient::V2::AiGatewayModelPricingCustomRequestSource.new({
          type: DatadogAPIClient::V2::AiGatewayModelPricingCustomRequestSourceType::CUSTOM,
        }),
        version: 1,
      }),
    }),
    id: "gpt-4o",
    type: DatadogAPIClient::V2::AiGatewayModelPricingType::MODEL_PRICING,
  }),
})
p api_instance.update_ai_gateway_model_pricing(9223372036854775807, "canonical", body)
