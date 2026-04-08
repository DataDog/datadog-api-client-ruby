# Validate an observability pipeline with amazon S3 source compression returns "OK" response

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
              "amazon-s3-source",
            ],
            processors: [
              DatadogAPIClient::V2::ObservabilityPipelineFilterProcessor.new({
                enabled: true,
                id: "filter-processor",
                include: "service:my-service",
                type: DatadogAPIClient::V2::ObservabilityPipelineFilterProcessorType::FILTER,
              }),
            ],
          }),
        ],
        sources: [
          DatadogAPIClient::V2::ObservabilityPipelineAmazonS3Source.new({
            id: "amazon-s3-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3SourceType::AMAZON_S3,
            region: "us-east-1",
            compression: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3SourceCompression::GZIP,
          }),
        ],
      }),
      name: "Pipeline with S3 Source Compression",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
