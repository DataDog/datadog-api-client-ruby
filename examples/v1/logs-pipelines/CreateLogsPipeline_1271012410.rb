# Create a pipeline with Array Processor Length Operation returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayLength",
  processors: [
    DatadogAPIClient::V1::LogsArrayProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayProcessorType::ARRAY_PROCESSOR,
      is_enabled: true,
      name: "count_tags",
      operation: DatadogAPIClient::V1::LogsArrayProcessorOperationLength.new({
        type: DatadogAPIClient::V1::LogsArrayProcessorOperationLengthType::LENGTH,
        source: "tags",
        target: "tagCount",
      }),
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
