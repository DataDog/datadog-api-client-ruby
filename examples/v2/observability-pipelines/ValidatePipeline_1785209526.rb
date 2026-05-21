# Validate an observability pipeline with HTTP server source valid_tokens returns "OK" response

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
              "http-server-source",
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
          DatadogAPIClient::V2::ObservabilityPipelineHttpServerSource.new({
            id: "http-server-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineHttpServerSourceType::HTTP_SERVER,
            auth_strategy: DatadogAPIClient::V2::ObservabilityPipelineHttpServerSourceAuthStrategy::NONE,
            decoding: DatadogAPIClient::V2::ObservabilityPipelineDecoding::DECODE_JSON,
            valid_tokens: [
              DatadogAPIClient::V2::ObservabilityPipelineHttpServerSourceValidToken.new({
                token_key: "HTTP_SERVER_TOKEN",
                enabled: true,
                path_to_token: DatadogAPIClient::V2::ObservabilityPipelineHttpServerSourceValidTokenPathToTokenHeader.new({
                  header: "X-Token",
                }),
                field_to_add: DatadogAPIClient::V2::ObservabilityPipelineSourceValidTokenFieldToAdd.new({
                  key: "token_name",
                  value: "primary_token",
                }),
              }),
              DatadogAPIClient::V2::ObservabilityPipelineHttpServerSourceValidToken.new({
                token_key: "HTTP_SERVER_TOKEN_BACKUP",
                enabled: true,
                path_to_token: DatadogAPIClient::V2::ObservabilityPipelineHttpServerSourceValidTokenPathToTokenLocation::PATH,
              }),
            ],
          }),
        ],
      }),
      name: "Pipeline with HTTP server valid_tokens",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
