# Create a pipeline with Span Id Remapper returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipeline",
  processors: [
    DatadogAPIClient::V1::LogsSpanRemapper.new({
      type: DatadogAPIClient::V1::LogsSpanRemapperType::SPAN_ID_REMAPPER,
      is_enabled: true,
      name: "test_filter",
      sources: [
        "dd.span_id",
      ],
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
