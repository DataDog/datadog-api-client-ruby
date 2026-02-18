# Validate an observability pipeline with OCSF mapper custom mapping returns "OK" response

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
                mappings: [
                  DatadogAPIClient::V2::ObservabilityPipelineOcsfMapperProcessorMapping.new({
                    include: "source:custom",
                    mapping: DatadogAPIClient::V2::ObservabilityPipelineOcsfMappingCustom.new({
                      mapping: [
                        DatadogAPIClient::V2::ObservabilityPipelineOcsfMappingCustomFieldMapping.new({
                          default: "",
                          dest: "time",
                          source: "timestamp",
                        }),
                        DatadogAPIClient::V2::ObservabilityPipelineOcsfMappingCustomFieldMapping.new({
                          default: "",
                          dest: "severity",
                          source: "level",
                        }),
                        DatadogAPIClient::V2::ObservabilityPipelineOcsfMappingCustomFieldMapping.new({
                          default: "",
                          dest: "device.type",
                          lookup: DatadogAPIClient::V2::ObservabilityPipelineOcsfMappingCustomLookup.new({
                            table: [
                              DatadogAPIClient::V2::ObservabilityPipelineOcsfMappingCustomLookupTableEntry.new({
                                contains: "Desktop",
                                value: "desktop",
                              }),
                            ],
                          }),
                          source: "host.type",
                        }),
                      ],
                      metadata: DatadogAPIClient::V2::ObservabilityPipelineOcsfMappingCustomMetadata.new({
                        _class: "Device Inventory Info",
                        profiles: [
                          "container",
                        ],
                        version: "1.3.0",
                      }),
                      version: 1,
                    }),
                  }),
                ],
                type: DatadogAPIClient::V2::ObservabilityPipelineOcsfMapperProcessorType::OCSF_MAPPER,
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
      name: "OCSF Custom Mapper Pipeline",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
