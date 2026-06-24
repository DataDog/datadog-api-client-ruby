# Validate an observability pipeline with websocket source bearer auth returns "OK" response

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
              "websocket-source",
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
          DatadogAPIClient::V2::ObservabilityPipelineWebsocketSource.new({
            id: "websocket-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineWebsocketSourceType::WEBSOCKET,
            decoding: DatadogAPIClient::V2::ObservabilityPipelineDecoding::DECODE_JSON,
            auth_strategy: DatadogAPIClient::V2::ObservabilityPipelineWebsocketSourceAuthStrategy::BEARER,
            token_key: "WS_BEARER_TOKEN",
            uri_key: "WS_URI",
            tls: DatadogAPIClient::V2::ObservabilityPipelineWebsocketSourceTlsEnabled.new({
              mode: DatadogAPIClient::V2::ObservabilityPipelineWebsocketSourceTlsEnabledMode::ENABLED,
            }),
          }),
        ],
      }),
      name: "Pipeline with WebSocket Source",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
