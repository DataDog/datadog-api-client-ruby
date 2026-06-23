# Create a pipeline with Array Map Processor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayMap",
  processors: [
    DatadogAPIClient::V1::LogsArrayMapProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayMapProcessorType::ARRAY_MAP_PROCESSOR,
      is_enabled: true,
      name: "map items",
      source: "items",
      target: "out",
      preserve_source: true,
      processors: [
        DatadogAPIClient::V1::LogsArrayMapAttributeRemapper.new({
          type: DatadogAPIClient::V1::LogsAttributeRemapperType::ATTRIBUTE_REMAPPER,
          sources: [
            "$sourceElem.id",
          ],
          target: "$targetElem.uid",
          preserve_source: true,
        }),
        DatadogAPIClient::V1::LogsArrayMapStringBuilderSubProcessor.new({
          type: DatadogAPIClient::V1::LogsStringBuilderProcessorType::STRING_BUILDER_PROCESSOR,
          template: "item-%{$sourceElem.id}",
          target: "$targetElem.label",
        }),
      ],
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
