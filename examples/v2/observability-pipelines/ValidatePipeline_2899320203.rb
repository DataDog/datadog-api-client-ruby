# Validate an observability pipeline with source secret key returns "OK" response

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
              "http-client-source",
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
          DatadogAPIClient::V2::ObservabilityPipelineHttpClientSource.new({
            id: "http-client-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineHttpClientSourceType::HTTP_CLIENT,
            decoding: DatadogAPIClient::V2::ObservabilityPipelineDecoding::DECODE_BYTES,
            scrape_interval_secs: 15,
            scrape_timeout_secs: 5,
            auth_strategy: DatadogAPIClient::V2::ObservabilityPipelineHttpClientSourceAuthStrategy::BEARER,
            token_key: "HTTP_CLIENT_TOKEN",
          }),
        ],
      }),
      name: "Pipeline with Source Secret",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
