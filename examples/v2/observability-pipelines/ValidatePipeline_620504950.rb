# Validate an observability pipeline with ClickHouse destination arrow_stream format returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::ObservabilityPipelineSpec.new({
  data: DatadogAPIClient::V2::ObservabilityPipelineSpecData.new({
    attributes: DatadogAPIClient::V2::ObservabilityPipelineDataAttributes.new({
      config: DatadogAPIClient::V2::ObservabilityPipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestination.new({
            id: "clickhouse-destination",
            inputs: [
              "my-processor-group",
            ],
            type: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationType::CLICKHOUSE,
            table: "application_logs",
            database: "my_database",
            format: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationFormat::ARROW_STREAM,
            batch_encoding: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationBatchEncoding.new({
              codec: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationBatchEncodingCodec::ARROW_STREAM,
              allow_nullable_fields: false,
            }),
            compression: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationCompressionAlgorithm::GZIP,
            auth: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationAuth.new({
              strategy: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationAuthStrategy::BASIC,
              username_key: "CLICKHOUSE_USERNAME",
              password_key: "CLICKHOUSE_PASSWORD",
            }),
            batch: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationBatch.new({
              max_events: 1000,
              timeout_secs: 1,
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
      name: "Pipeline with ClickHouse Destination Arrow Stream",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
