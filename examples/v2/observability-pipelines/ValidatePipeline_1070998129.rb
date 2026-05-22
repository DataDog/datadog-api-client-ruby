# Validate an observability pipeline with cloud_prem destination buffer returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::ObservabilityPipelineSpec.new({
  data: DatadogAPIClient::V2::ObservabilityPipelineSpecData.new({
    attributes: DatadogAPIClient::V2::ObservabilityPipelineDataAttributes.new({
      config: DatadogAPIClient::V2::ObservabilityPipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::ObservabilityPipelineCloudPremDestination.new({
            id: "cloud-prem-destination",
            inputs: [
              "my-processor-group",
            ],
            type: DatadogAPIClient::V2::ObservabilityPipelineCloudPremDestinationType::CLOUD_PREM,
            endpoint_url_key: "CLOUDPREM_ENDPOINT_URL",
            buffer: DatadogAPIClient::V2::ObservabilityPipelineDiskBufferOptions.new({
              type: DatadogAPIClient::V2::ObservabilityPipelineBufferOptionsDiskType::DISK,
              max_size: 1073741824,
              when_full: DatadogAPIClient::V2::ObservabilityPipelineBufferOptionsWhenFull::BLOCK,
            }),
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
              DatadogAPIClient::V2::ObservabilityPipelineFilterProcessor.new({
                enabled: true,
                id: "filter-processor",
                include: "status:error",
                type: DatadogAPIClient::V2::ObservabilityPipelineFilterProcessorType::FILTER,
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
      name: "Pipeline with CloudPrem Buffer",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
