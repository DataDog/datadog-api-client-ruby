# Validate an observability pipeline with OCSF mapper library mapping returns "OK" response

require "datadog_api_client"
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
              DatadogAPIClient::V2::ObservabilityPipelineOcsfMapperProcessor.new({
                enabled: true,
                id: "ocsf-mapper-processor",
                include: "service:my-service",
                type: DatadogAPIClient::V2::ObservabilityPipelineOcsfMapperProcessorType::OCSF_MAPPER,
                mappings: [
                  DatadogAPIClient::V2::ObservabilityPipelineOcsfMapperProcessorMapping.new({
                    include: "source:cloudtrail",
                    mapping: DatadogAPIClient::V2::ObservabilityPipelineOcsfMappingLibrary::CLOUDTRAIL_ACCOUNT_CHANGE,
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
      name: "OCSF Mapper Pipeline",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
