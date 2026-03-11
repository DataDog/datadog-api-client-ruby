# Validate a metrics pipeline with opentelemetry source returns "OK" response

require "datadog_api_client"
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
              "opentelemetry-source",
            ],
            processors: [
              DatadogAPIClient::V2::ObservabilityPipelineFilterProcessor.new({
                enabled: true,
                id: "filter-processor",
                include: "env:production",
                type: DatadogAPIClient::V2::ObservabilityPipelineFilterProcessorType::FILTER,
              }),
            ],
          }),
        ],
        sources: [
          DatadogAPIClient::V2::ObservabilityPipelineOpentelemetrySource.new({
            id: "opentelemetry-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineOpentelemetrySourceType::OPENTELEMETRY,
          }),
        ],
      }),
      name: "Metrics OTel Pipeline",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
