# Create a pipeline with Array Processor Key Value Operation with target and override_on_conflict returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayKeyValueTarget",
  processors: [
    DatadogAPIClient::V1::LogsArrayProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayProcessorType::ARRAY_PROCESSOR,
      is_enabled: true,
      name: "extract_kv_to_target",
      operation: DatadogAPIClient::V1::LogsArrayProcessorOperationExtractKeyValue.new({
        type: DatadogAPIClient::V1::LogsArrayProcessorOperationExtractKeyValueType::KEY_VALUE,
        source: "tags",
        key_to_extract: "name",
        value_to_extract: "value",
        target: "extracted",
        override_on_conflict: true,
      }),
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
