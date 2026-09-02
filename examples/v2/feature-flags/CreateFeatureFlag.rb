# Create a feature flag returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::CreateFeatureFlagRequest.new({
  data: DatadogAPIClient::V2::CreateFeatureFlagData.new({
    type: DatadogAPIClient::V2::CreateFeatureFlagDataType::FEATURE_FLAGS,
    attributes: DatadogAPIClient::V2::CreateFeatureFlagAttributes.new({
      default_variant_key: "variant-Example-Feature-Flag-1",
      distribution_channel: DatadogAPIClient::V2::FeatureFlagDistributionChannel::SERVER,
      key: "test-feature-flag-Example-Feature-Flag",
      name: "Test Feature Flag Example-Feature-Flag",
      require_approval: false,
      staleness_status: DatadogAPIClient::V2::CreateFeatureFlagStalenessStatus::PERMANENT,
      tags: [
        "env:api-client-test",
      ],
      value_type: DatadogAPIClient::V2::ValueType::BOOLEAN,
      variants: [
        DatadogAPIClient::V2::CreateVariant.new({
          key: "variant-Example-Feature-Flag-1",
          name: "Variant Example-Feature-Flag A",
          value: "true",
        }),
        DatadogAPIClient::V2::CreateVariant.new({
          key: "variant-Example-Feature-Flag-2",
          name: "Variant Example-Feature-Flag B",
          value: "false",
        }),
      ],
    }),
  }),
})
p api_instance.create_feature_flag(body)
