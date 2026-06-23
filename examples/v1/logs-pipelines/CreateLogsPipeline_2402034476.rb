# Create a pipeline with Array Map Processor using arithmetic sub-processor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayMapArithmetic",
  processors: [
    DatadogAPIClient::V1::LogsArrayMapProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayMapProcessorType::ARRAY_MAP_PROCESSOR,
      is_enabled: true,
      name: "double counts",
      source: "items",
      target: "out",
      processors: [
        DatadogAPIClient::V1::LogsArrayMapArithmeticSubProcessor.new({
          type: DatadogAPIClient::V1::LogsArithmeticProcessorType::ARITHMETIC_PROCESSOR,
          expression: "$sourceElem.count * 2",
          target: "$targetElem.doubled",
        }),
      ],
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
