# Update a feature flag returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "feature_flag" in the system
FEATURE_FLAG_DATA_ID = ENV["FEATURE_FLAG_DATA_ID"]

body = DatadogAPIClient::V2::UpdateFeatureFlagRequest.new({
  data: DatadogAPIClient::V2::UpdateFeatureFlagData.new({
    type: DatadogAPIClient::V2::UpdateFeatureFlagDataType::FEATURE_FLAGS,
    attributes: DatadogAPIClient::V2::UpdateFeatureFlagAttributes.new({
      description: "Updated description for the feature flag",
      name: "Updated Test Feature Flag Example-Feature-Flag",
    }),
  }),
})
p api_instance.update_feature_flag(FEATURE_FLAG_DATA_ID, body)
