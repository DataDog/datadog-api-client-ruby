# Validate an observability pipeline with enrichment table secret field lookup returns "OK" response

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
              DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableProcessor.new({
                enabled: true,
                id: "enrichment-processor",
                include: "*",
                target: "enriched",
                type: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableProcessorType::ENRICHMENT_TABLE,
                file: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFile.new({
                  encoding: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFileEncoding.new({
                    delimiter: ",",
                    type: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFileEncodingType::CSV,
                    includes_headers: true,
                  }),
                  key: [
                    DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFileKeyItems.new({
                      column: "user_id",
                      comparison: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFileKeyItemsComparison::EQUALS,
                      field: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFieldSecretLookup.new({
                        secret: "LOOKUP_KEY_SECRET",
                      }),
                    }),
                  ],
                  path: "/etc/enrichment/lookup.csv",
                  schema: [
                    DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFileSchemaItems.new({
                      column: "user_id",
                      type: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFileSchemaItemsType::STRING,
                    }),
                  ],
                }),
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
      name: "Pipeline with Enrichment Table Secret Field Lookup",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
