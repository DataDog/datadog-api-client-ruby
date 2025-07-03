# Create a pipeline with Array Processor Append Operation returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayAppend",
  processors: [
    DatadogAPIClient::V1::LogsArrayProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayProcessorType::ARRAY_PROCESSOR,
      is_enabled: true,
      name: "append_ip_to_array",
      operation: DatadogAPIClient::V1::LogsArrayProcessorOperationAppend.new({
        type: DatadogAPIClient::V1::LogsArrayProcessorOperationAppendType::APPEND,
        source: "network.client.ip",
        target: "sourceIps",
      }),
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
