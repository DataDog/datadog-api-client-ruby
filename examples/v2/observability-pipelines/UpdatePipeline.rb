# Update a specific pipeline returns "Pipeline updated" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::Pipeline.new({
  data: DatadogAPIClient::V2::PipelineData.new({
    attributes: DatadogAPIClient::V2::PipelineDataAttributes.new({
      config: DatadogAPIClient::V2::PipelineDataAttributesConfig.new({
        destinations: [],
        processors: [],
        sources: [],
      }),
      name: "",
    }),
    id: "e8890e15-053e-4d34-9404-1b41b9e403e2",
    type: "pipeline",
  }),
})
p api_instance.update_pipeline("pipeline_id", body)
