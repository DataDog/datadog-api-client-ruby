# Validate an observability pipeline with amazon_s3_generic destination SSE-KMS encryption returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::ObservabilityPipelineSpec.new({
  data: DatadogAPIClient::V2::ObservabilityPipelineSpecData.new({
    attributes: DatadogAPIClient::V2::ObservabilityPipelineDataAttributes.new({
      config: DatadogAPIClient::V2::ObservabilityPipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::ObservabilityPipelineAmazonS3GenericDestination.new({
            id: "generic-s3-destination",
            inputs: [
              "my-processor-group",
            ],
            type: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3GenericDestinationType::GENERIC_ARCHIVES_S3,
            bucket: "my-bucket",
            region: "us-east-1",
            storage_class: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3DestinationStorageClass::STANDARD,
            encoding: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3GenericEncodingJson.new({
              type: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3GenericEncodingJsonType::JSON,
            }),
            compression: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3GenericCompressionGzip.new({
              algorithm: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3GenericCompressionGzipType::GZIP,
              level: 6,
            }),
            server_side_encryption: DatadogAPIClient::V2::ObservabilityPipelineAmazonS3DestinationServerSideEncryption::AWS_KMS,
            ssekms_key_id: "arn:aws:kms:us-east-1:123456789012:key/mrk-abc123",
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
      name: "Pipeline with S3 Generic SSE-KMS",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
