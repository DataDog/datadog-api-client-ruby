# Create a pipeline with Array Processor Select Operation returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArraySelect",
  processors: [
    DatadogAPIClient::V1::LogsArrayProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayProcessorType::ARRAY_PROCESSOR,
      is_enabled: true,
      name: "extract_referrer",
      operation: DatadogAPIClient::V1::LogsArrayProcessorOperationSelect.new({
        type: DatadogAPIClient::V1::LogsArrayProcessorOperationSelectType::SELECT,
        source: "httpRequest.headers",
        target: "referrer",
        filter: "name:Referrer",
        value_to_extract: "value",
      }),
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
