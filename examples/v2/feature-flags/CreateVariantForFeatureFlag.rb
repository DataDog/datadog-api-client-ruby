# Add a variant to a feature flag returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::CreateVariant.new({
  key: "variant-abc123",
  name: "Variant ABC123",
  value: "true",
})
p api_instance.create_variant_for_feature_flag("550e8400-e29b-41d4-a716-446655440000", body)
