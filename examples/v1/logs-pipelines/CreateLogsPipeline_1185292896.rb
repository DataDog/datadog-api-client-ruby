# Create a pipeline with Array Map Processor using category sub-processor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineArrayMapCategory",
  processors: [
    DatadogAPIClient::V1::LogsArrayMapProcessor.new({
      type: DatadogAPIClient::V1::LogsArrayMapProcessorType::ARRAY_MAP_PROCESSOR,
      is_enabled: true,
      name: "categorize items",
      source: "items",
      target: "out",
      processors: [
        DatadogAPIClient::V1::LogsArrayMapCategorySubProcessor.new({
          type: DatadogAPIClient::V1::LogsCategoryProcessorType::CATEGORY_PROCESSOR,
          target: "$targetElem.level",
          categories: [
            DatadogAPIClient::V1::LogsCategoryProcessorCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "@$sourceElem.status:error",
              }),
              name: "error",
            }),
            DatadogAPIClient::V1::LogsCategoryProcessorCategory.new({
              filter: DatadogAPIClient::V1::LogsFilter.new({
                query: "*",
              }),
              name: "info",
            }),
          ],
        }),
      ],
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
