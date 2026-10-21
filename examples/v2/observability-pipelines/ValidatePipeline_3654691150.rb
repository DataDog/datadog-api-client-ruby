# Validate an observability pipeline with spike protection processor threshold overrides returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::ObservabilityPipelineSpec.new({
  data: DatadogAPIClient::V2::ObservabilityPipelineSpecData.new({
    attributes: DatadogAPIClient::V2::ObservabilityPipelineDataAttributes.new({
      config: DatadogAPIClient::V2::ObservabilityPipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::ObservabilityPipelineDatadogLogsDestination.new({
            id: "datadog-logs-destination",
            inputs: [
              "my-processor-group",
            ],
            type: DatadogAPIClient::V2::ObservabilityPipelineDatadogLogsDestinationType::DATADOG_LOGS,
          }),
        ],
        processor_groups: [
          DatadogAPIClient::V2::ObservabilityPipelineConfigProcessorGroup.new({
            enabled: true,
            id: "my-processor-group",
            include: "service:my-service",
            inputs: [
              "datadog-agent-source",
            ],
            processors: [
              DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessor.new({
                enabled: true,
                id: "spike-protection-processor",
                include: "*",
                type: DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorType::SPIKE_PROTECTION,
                name: "MyPartitionedSpikeProtection",
                spike_action: DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorSpikeAction::NO_ACTION,
                partition_fields: [
                  "service",
                ],
                action_when_missing_partitions: DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorActionWhenMissingPartitions::DEFAULT_BUCKET,
                minimal_threshold_overrides: [
                  DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorThresholdOverride.new({
                    fields: [
                      DatadogAPIClient::V2::ObservabilityPipelineFieldValue.new({
                        name: "service",
                        value: "checkout",
                      }),
                    ],
                    minimal_threshold: DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorMinimalThresholdBytes.new({
                      type: DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorMinimalThresholdBytesType::THRESHOLD,
                      bytes: 53687091200,
                    }),
                  }),
                  DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorThresholdOverride.new({
                    fields: [
                      DatadogAPIClient::V2::ObservabilityPipelineFieldValue.new({
                        name: "service",
                        value: "payments",
                      }),
                    ],
                    minimal_threshold: DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorMinimalThresholdAlwaysKeep.new({
                      type: DatadogAPIClient::V2::ObservabilityPipelineSpikeProtectionProcessorMinimalThresholdAlwaysKeepType::ALWAYS_KEEP,
                    }),
                  }),
                ],
              }),
            ],
          }),
        ],
        sources: [
          DatadogAPIClient::V2::ObservabilityPipelineDatadogAgentSource.new({
            id: "datadog-agent-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineDatadogAgentSourceType::DATADOG_AGENT,
          }),
        ],
      }),
      name: "Pipeline with Spike Protection Threshold Overrides",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
