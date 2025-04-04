# Create a new pipeline returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_pipeline".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::PipelineCreateRequest.new({
  data: DatadogAPIClient::V2::PipelineCreateRequestData.new({
    attributes: DatadogAPIClient::V2::PipelineDataAttributes.new({
      config: DatadogAPIClient::V2::PipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::PipelineDatadogLogsDestination.new({
            id: "datadog-logs-destination",
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
      name: "Main Observability Pipeline",
    }),
    type: "pipelines",
  }),
})
p api_instance.create_pipeline(body)
