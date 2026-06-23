# Delete a variant returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new
api_instance.delete_variant_from_feature_flag("550e8400-e29b-41d4-a716-446655440000", "550e8400-e29b-41d4-a716-446655440002")
