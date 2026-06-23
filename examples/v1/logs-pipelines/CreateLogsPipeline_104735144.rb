# Create a pipeline with Array Map Processor with preserve_source false returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayMapNoPreserve",
  processors: [
    DatadogAPIClient::V1::LogsArrayMapProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayMapProcessorType::ARRAY_MAP_PROCESSOR,
      is_enabled: true,
      name: "map and remove source",
      source: "items",
      target: "out",
      preserve_source: false,
      processors: [
        DatadogAPIClient::V1::LogsArrayMapAttributeRemapper.new({
          type: DatadogAPIClient::V1::LogsAttributeRemapperType::ATTRIBUTE_REMAPPER,
          sources: [
            "$sourceElem.id",
          ],
          target: "$targetElem.uid",
        }),
      ],
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
