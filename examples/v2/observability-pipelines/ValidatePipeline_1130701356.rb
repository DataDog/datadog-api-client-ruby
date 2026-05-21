# Validate an observability pipeline with Splunk HEC source valid_tokens returns "OK" response

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
              "splunk-hec-source",
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
          DatadogAPIClient::V2::ObservabilityPipelineSplunkHecSource.new({
            id: "splunk-hec-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineSplunkHecSourceType::SPLUNK_HEC,
            valid_tokens: [
              DatadogAPIClient::V2::ObservabilityPipelineSplunkHecSourceValidToken.new({
                token_key: "SPLUNK_HEC_TOKEN",
                enabled: true,
                field_to_add: DatadogAPIClient::V2::ObservabilityPipelineSourceValidTokenFieldToAdd.new({
                  key: "token_name",
                  value: "primary_token",
                }),
              }),
              DatadogAPIClient::V2::ObservabilityPipelineSplunkHecSourceValidToken.new({
                token_key: "SPLUNK_HEC_TOKEN_BACKUP",
                enabled: false,
              }),
            ],
          }),
        ],
      }),
      name: "Pipeline with Splunk HEC valid_tokens",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
