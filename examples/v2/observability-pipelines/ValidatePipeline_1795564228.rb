# Validate a metrics pipeline with enrichment table processor file lookup returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::ObservabilityPipelineSpec.new({
  data: DatadogAPIClient::V2::ObservabilityPipelineSpecData.new({
    attributes: DatadogAPIClient::V2::ObservabilityPipelineDataAttributes.new({
      config: DatadogAPIClient::V2::ObservabilityPipelineConfig.new({
        pipeline_type: DatadogAPIClient::V2::ObservabilityPipelineConfigPipelineType::METRICS,
        destinations: [
          DatadogAPIClient::V2::ObservabilityPipelineDatadogMetricsDestination.new({
            id: "datadog-metrics-destination",
            inputs: [
              "my-processor-group",
            ],
            type: DatadogAPIClient::V2::ObservabilityPipelineDatadogMetricsDestinationType::DATADOG_METRICS,
          }),
        ],
        processor_groups: [
          DatadogAPIClient::V2::ObservabilityPipelineConfigProcessorGroup.new({
            enabled: true,
            id: "my-processor-group",
            include: "*",
            inputs: [
              "datadog-agent-source",
            ],
            processors: [
              DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableFileProcessor.new({
                enabled: true,
                id: "enrichment-table-processor",
                include: "*",
                type: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableProcessorType::ENRICHMENT_TABLE,
                file: DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableFile.new({
                  encoding: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFileEncoding.new({
                    delimiter: ",",
                    type: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableFileEncodingType::CSV,
                    includes_headers: true,
                  }),
                  key: DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableFileKey.new({
                    column: "service",
                    source: DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableTagLookup.new({
                      type: DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableTagLookupType::TAG,
                      name: "service",
                    }),
                  }),
                  path: "/etc/enrichment/lookup.csv",
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
      name: "Metrics Pipeline with Enrichment Table File Lookup",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
