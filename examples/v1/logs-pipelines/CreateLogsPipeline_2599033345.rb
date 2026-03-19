# Create a pipeline with nested pipeline processor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testPipelineWithNested",
  processors: [
    DatadogAPIClient::V1::LogsPipelineProcessor.new({
      type: DatadogAPIClient::V1::LogsPipelineProcessorType::PIPELINE,
      is_enabled: true,
      name: "nested_pipeline_with_metadata",
      filter: DatadogAPIClient::V1::LogsFilter.new({
        query: "env:production",
      }),
      tags: [
        "env:prod",
        "type:nested",
      ],
      description: "This is a nested pipeline for production logs",
    }),
  ],
  tags: [
    "team:test",
  ],
  description: "Pipeline containing nested processor with tags and description",
})
p api_instance.create_logs_pipeline(body)
