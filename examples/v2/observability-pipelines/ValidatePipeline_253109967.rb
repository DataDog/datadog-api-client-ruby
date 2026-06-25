# Validate an observability pipeline with ClickHouse destination with all fields set returns "OK" response

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
            endpoint_url_key: "CLICKHOUSE_ENDPOINT_URL",
            database: "my_database",
            table: "application_logs",
            format: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationFormat::ARROW_STREAM,
            skip_unknown_fields: true,
            date_time_best_effort: true,
            compression: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationCompressionObject.new({
              algorithm: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationCompressionAlgorithm::GZIP,
              level: 6,
            }),
            auth: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationAuth.new({
              strategy: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationAuthStrategy::BASIC,
              username_key: "CLICKHOUSE_USERNAME",
              password_key: "CLICKHOUSE_PASSWORD",
            }),
            batch: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationBatch.new({
              max_events: 1000,
              timeout_secs: 1,
            }),
            batch_encoding: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationBatchEncoding.new({
              codec: DatadogAPIClient::V2::ObservabilityPipelineClickhouseDestinationBatchEncodingCodec::ARROW_STREAM,
              allow_nullable_fields: true,
            }),
            tls: DatadogAPIClient::V2::ObservabilityPipelineTls.new({
              crt_file: "/path/to/cert.crt",
              ca_file: "/path/to/ca.crt",
              key_file: "/path/to/key.key",
              key_pass_key: "TLS_KEY_PASSPHRASE",
            }),
            buffer: DatadogAPIClient::V2::ObservabilityPipelineMemoryBufferSizeOptions.new({
              type: DatadogAPIClient::V2::ObservabilityPipelineBufferOptionsMemoryType::MEMORY,
              max_events: 500,
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
      name: "Pipeline with ClickHouse Destination All Fields",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
