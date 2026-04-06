# Update targeting rules for a flag in an environment returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

# there is a valid "feature_flag" in the system
FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID = ENV["FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID"]
FEATURE_FLAG_DATA_ID = ENV["FEATURE_FLAG_DATA_ID"]

# there is a valid "environment" in the system
ENVIRONMENT_DATA_ID = ENV["ENVIRONMENT_DATA_ID"]

body = DatadogAPIClient::V2::OverwriteAllocationsRequest.new({
  data: [
    DatadogAPIClient::V2::AllocationDataRequest.new({
      type: DatadogAPIClient::V2::AllocationDataType::ALLOCATIONS,
      attributes: DatadogAPIClient::V2::UpsertAllocationRequest.new({
        key: "overwrite-allocation-example-feature-flag",
        name: "New targeting rule Example-Feature-Flag",
        targeting_rules: [],
        variant_weights: [
          DatadogAPIClient::V2::VariantWeightRequest.new({
            variant_id: FEATURE_FLAG_DATA_ATTRIBUTES_VARIANTS_0_ID,
            value: 100,
          }),
        ],
        exposure_schedule: DatadogAPIClient::V2::ExposureScheduleRequest.new({
          rollout_options: DatadogAPIClient::V2::RolloutOptionsRequest.new({
            strategy: DatadogAPIClient::V2::RolloutStrategy::UNIFORM_INTERVALS,
            autostart: false,
            selection_interval_ms: 86400000,
          }),
          rollout_steps: [
            DatadogAPIClient::V2::ExposureRolloutStepRequest.new({
              exposure_ratio: 0.05,
              interval_ms: nil,
              is_pause_record: false,
              grouped_step_index: 0,
            }),
            DatadogAPIClient::V2::ExposureRolloutStepRequest.new({
              exposure_ratio: 0.25,
              interval_ms: nil,
              is_pause_record: false,
              grouped_step_index: 1,
            }),
            DatadogAPIClient::V2::ExposureRolloutStepRequest.new({
              exposure_ratio: 1,
              interval_ms: nil,
              is_pause_record: false,
              grouped_step_index: 2,
            }),
          ],
        }),
        guardrail_metrics: [],
        type: DatadogAPIClient::V2::AllocationType::CANARY,
      }),
    }),
  ],
})
p api_instance.update_allocations_for_feature_flag_in_environment(FEATURE_FLAG_DATA_ID, ENVIRONMENT_DATA_ID, body)
