# Create a pipeline with Array Processor Append Operation with preserve_source true returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayAppendPreserve",
  processors: [
    DatadogAPIClient::V1::LogsArrayProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayProcessorType::ARRAY_PROCESSOR,
      is_enabled: true,
      name: "append_ip_and_keep_source",
      operation: DatadogAPIClient::V1::LogsArrayProcessorOperationAppend.new({
        type: DatadogAPIClient::V1::LogsArrayProcessorOperationAppendType::APPEND,
        source: "network.client.ip",
        target: "sourceIps",
        preserve_source: true,
      }),
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
