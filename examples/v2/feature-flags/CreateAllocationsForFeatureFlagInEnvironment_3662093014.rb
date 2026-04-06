# Create allocation for a flag in an environment returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "feature_flag" in the system
FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID = ENV["FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID"]
FEATURE_FLAG_DATA_ID = ENV["FEATURE_FLAG_DATA_ID"]

# there is a valid "environment" in the system
ENVIRONMENT_DATA_ID = ENV["ENVIRONMENT_DATA_ID"]

body = DatadogAPIClient::V2::CreateAllocationsRequest.new({
  data: DatadogAPIClient::V2::AllocationDataRequest.new({
    type: DatadogAPIClient::V2::AllocationDataType::ALLOCATIONS,
    attributes: DatadogAPIClient::V2::UpsertAllocationRequest.new({
      name: "New targeting rule Example-Feature-Flag",
      key: "new-targeting-rule-example-feature-flag",
      targeting_rules: [],
      variant_weights: [
        DatadogAPIClient::V2::VariantWeightRequest.new({
          variant_id: FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID,
          value: 100,
        }),
      ],
      guardrail_metrics: [],
      type: DatadogAPIClient::V2::AllocationType::CANARY,
    }),
  }),
})
p api_instance.create_allocations_for_feature_flag_in_environment(FEATURE_FLAG_DATA_ID, ENVIRONMENT_DATA_ID, body)
