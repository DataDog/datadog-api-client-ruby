# Create targeting rules for a flag env returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::FeatureFlagsAPI.new

body = DatadogAPIClient::V2::CreateAllocationsRequest.new({
  data: DatadogAPIClient::V2::AllocationDataRequest.new({
    attributes: DatadogAPIClient::V2::UpsertAllocationRequest.new({
      experiment_id: "550e8400-e29b-41d4-a716-446655440030",
      exposure_schedule: DatadogAPIClient::V2::ExposureScheduleRequest.new({
        absolute_start_time: "2025-06-13T12:00:00Z",
        control_variant_id: "550e8400-e29b-41d4-a716-446655440012",
        control_variant_key: "control",
        id: "550e8400-e29b-41d4-a716-446655440010",
        rollout_options: DatadogAPIClient::V2::RolloutOptionsRequest.new({
          autostart: false,
          selection_interval_ms: 3600000,
          strategy: DatadogAPIClient::V2::RolloutStrategy::UNIFORM_INTERVALS,
        }),
        rollout_steps: [
          DatadogAPIClient::V2::ExposureRolloutStepRequest.new({
            exposure_ratio: 0.5,
            grouped_step_index: 1,
            id: "550e8400-e29b-41d4-a716-446655440040",
            interval_ms: 3600000,
            is_pause_record: false,
          }),
        ],
      }),
      guardrail_metrics: [
        DatadogAPIClient::V2::GuardrailMetricRequest.new({
          metric_id: "metric-error-rate",
          trigger_action: DatadogAPIClient::V2::GuardrailTriggerAction::PAUSE,
        }),
      ],
      id: "550e8400-e29b-41d4-a716-446655440020",
      key: "prod-rollout",
      name: "Production Rollout",
      targeting_rules: [
        DatadogAPIClient::V2::TargetingRuleRequest.new({
          conditions: [
            DatadogAPIClient::V2::ConditionRequest.new({
              attribute: "user_tier",
              operator: DatadogAPIClient::V2::ConditionOperator::ONE_OF,
              value: [
                "premium",
                "enterprise",
              ],
            }),
          ],
        }),
      ],
      type: DatadogAPIClient::V2::AllocationType::FEATURE_GATE,
      variant_weights: [
        DatadogAPIClient::V2::VariantWeightRequest.new({
          value: 50,
          variant_id: "550e8400-e29b-41d4-a716-446655440001",
          variant_key: "control",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::AllocationDataType::ALLOCATIONS,
  }),
})
p api_instance.create_allocations_for_feature_flag_in_environment("550e8400-e29b-41d4-a716-446655440000", "550e8400-e29b-41d4-a716-446655440001", body)
