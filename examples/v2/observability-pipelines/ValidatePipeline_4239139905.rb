# Validate a metrics pipeline with enrichment table processor reference table returns "OK" response

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
              DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableReferenceTableProcessor.new({
                enabled: true,
                id: "enrichment-table-processor",
                include: "*",
                type: DatadogAPIClient::V2::ObservabilityPipelineEnrichmentTableProcessorType::ENRICHMENT_TABLE,
                reference_table: DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableReferenceTable.new({
                  table_id: "metric-enrichment",
                  key: DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableReferenceKey.new({
                    source: DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableMetricNameLookup.new({
                      type: DatadogAPIClient::V2::ObservabilityPipelineMetricEnrichmentTableMetricNameLookupType::METRIC_NAME,
                    }),
                  }),
                  columns: [
                    "environment",
                    "team",
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
      name: "Metrics Pipeline with Enrichment Table Reference Table",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
