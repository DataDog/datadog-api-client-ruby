# Create a pipeline with Array Processor Key Value Operation returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayKeyValue",
  processors: [
    DatadogAPIClient::V1::LogsArrayProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayProcessorType::ARRAY_PROCESSOR,
      is_enabled: true,
      name: "extract_kv",
      operation: DatadogAPIClient::V1::LogsArrayProcessorOperationExtractKeyValue.new({
        type: DatadogAPIClient::V1::LogsArrayProcessorOperationExtractKeyValueType::KEY_VALUE,
        source: "tags",
        key_to_extract: "name",
        value_to_extract: "value",
      }),
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
