# Update a variant returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::UpdateVariantRequest.new({
  data: DatadogAPIClient::V2::UpdateVariantData.new({
    attributes: DatadogAPIClient::V2::UpdateVariantAttributes.new({
      name: "Variant ABC123 Updated",
      value: "new_value",
    }),
    id: "550e8400-e29b-41d4-a716-446655440002",
    type: DatadogAPIClient::V2::VariantDataType::VARIANTS,
  }),
})
p api_instance.update_variant_for_feature_flag("550e8400-e29b-41d4-a716-446655440000", "550e8400-e29b-41d4-a716-446655440002", body)
