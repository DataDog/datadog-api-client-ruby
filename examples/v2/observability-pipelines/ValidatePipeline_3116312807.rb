# Validate an observability pipeline with Splunk TCP source max_connection_duration_secs returns "OK" response

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
              "splunk-tcp-source",
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
          DatadogAPIClient::V2::ObservabilityPipelineSplunkTcpSource.new({
            id: "splunk-tcp-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineSplunkTcpSourceType::SPLUNK_TCP,
            max_connection_duration_secs: 3600,
          }),
        ],
      }),
      name: "Pipeline with Splunk TCP max connection duration",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
