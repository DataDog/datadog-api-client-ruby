# Update a pipeline returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_pipeline".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

# there is a valid "pipeline" in the system
PIPELINE_DATA_ID = ENV["PIPELINE_DATA_ID"]

body = DatadogAPIClient::V2::ObservabilityPipeline.new({
  data: DatadogAPIClient::V2::ObservabilityPipelineData.new({
    attributes: DatadogAPIClient::V2::ObservabilityPipelineDataAttributes.new({
      config: DatadogAPIClient::V2::ObservabilityPipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::ObservabilityPipelineDatadogLogsDestination.new({
            id: "updated-datadog-logs-destination-id",
            inputs: [
              "filter-processor",
            ],
            type: DatadogAPIClient::V2::ObservabilityPipelineDatadogLogsDestinationType::DATADOG_LOGS,
          }),
        ],
        processors: [
          DatadogAPIClient::V2::ObservabilityPipelineFilterProcessor.new({
            id: "filter-processor",
            include: "service:my-service",
            inputs: [
              "datadog-agent-source",
            ],
            type: DatadogAPIClient::V2::ObservabilityPipelineFilterProcessorType::FILTER,
          }),
        ],
        sources: [
          DatadogAPIClient::V2::ObservabilityPipelineDatadogAgentSource.new({
            id: "datadog-agent-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineDatadogAgentSourceType::DATADOG_AGENT,
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
