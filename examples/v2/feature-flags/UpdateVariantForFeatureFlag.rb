# Update a variant returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::UpdateVariantRequest.new({
  name: "Variant ABC123 Updated",
  value: "new_value",
})
p api_instance.update_variant_for_feature_flag("550e8400-e29b-41d4-a716-446655440000", "550e8400-e29b-41d4-a716-446655440002", body)
