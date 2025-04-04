# Update a pipeline returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_pipeline".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

# there is a valid "pipeline" in the system
PIPELINE_DATA_ID = ENV["PIPELINE_DATA_ID"]

body = DatadogAPIClient::V2::Pipeline.new({
  data: DatadogAPIClient::V2::PipelineData.new({
    attributes: DatadogAPIClient::V2::PipelineDataAttributes.new({
      config: DatadogAPIClient::V2::PipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::PipelineDatadogLogsDestination.new({
            id: "updated-datadog-logs-destination-id",
            inputs: [
              "filter-processor",
            ],
            type: DatadogAPIClient::V2::PipelineDatadogLogsDestinationType::DATADOG_LOGS,
          }),
        ],
        processors: [
          DatadogAPIClient::V2::PipelineFilterProcessor.new({
            id: "filter-processor",
            include: "service:my-service",
            inputs: [
              "datadog-agent-source",
            ],
            type: DatadogAPIClient::V2::PipelineFilterProcessorType::FILTER,
          }),
        ],
        sources: [
          DatadogAPIClient::V2::PipelineDatadogAgentSource.new({
            id: "datadog-agent-source",
            type: DatadogAPIClient::V2::PipelineDatadogAgentSourceType::DATADOG_AGENT,
          }),
        ],
      }),
      name: "Updated Pipeline Name",
    }),
    id: PIPELINE_DATA_ID,
    type: "pipelines",
  }),
})
p api_instance.update_pipeline(PIPELINE_DATA_ID, body)
