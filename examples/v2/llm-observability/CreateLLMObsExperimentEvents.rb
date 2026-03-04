# Push events for an LLM Observability experiment returns "Accepted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_llm_obs_experiment_events".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LLMObservabilityAPI.new

body = DatadogAPIClient::V2::LLMObsExperimentEventsRequest.new({
  data: DatadogAPIClient::V2::LLMObsExperimentEventsDataRequest.new({
    attributes: DatadogAPIClient::V2::LLMObsExperimentEventsDataAttributesRequest.new({
      metrics: [
        DatadogAPIClient::V2::LLMObsExperimentMetric.new({
          assessment: DatadogAPIClient::V2::LLMObsMetricAssessment::PASS,
          error: DatadogAPIClient::V2::LLMObsExperimentMetricError.new({}),
          label: "faithfulness",
          metric_type: DatadogAPIClient::V2::LLMObsMetricScoreType::SCORE,
          span_id: "span-7a1b2c3d",
          tags: [],
          timestamp_ms: 1705314600000,
        }),
      ],
      spans: [
        DatadogAPIClient::V2::LLMObsExperimentSpan.new({
          dataset_id: "9f64e5c7-dc5a-45c8-a17c-1b85f0bec97d",
          duration: 1500000000,
          meta: DatadogAPIClient::V2::LLMObsExperimentSpanMeta.new({
            error: DatadogAPIClient::V2::LLMObsExperimentSpanError.new({
              message: "Model response timed out",
              stack: 'Traceback (most recent call last):\n  File "main.py", line 10, in <module>\n    response = model.generate(input)\n  File "model.py", line 45, in generate\n    raise TimeoutError("Model response timed out")\nTimeoutError: Model response timed out',
              type: "TimeoutError",
            }),
            input: nil,
            output: nil,
          }),
          name: "llm_call",
          project_id: "a33671aa-24fd-4dcd-9b33-a8ec7dde7751",
          span_id: "span-7a1b2c3d",
          start_ns: 1705314600000000000,
          status: DatadogAPIClient::V2::LLMObsExperimentSpanStatus::OK,
          tags: [],
          trace_id: "abc123def456",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::LLMObsEventType::EVENTS,
  }),
})
p api_instance.create_llm_obs_experiment_events("experiment_id", body)
