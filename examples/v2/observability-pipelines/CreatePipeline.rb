# Create a new pipeline returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_pipeline".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::ObservabilityPipelineCreateRequest.new({
  data: DatadogAPIClient::V2::ObservabilityPipelineCreateRequestData.new({
    attributes: DatadogAPIClient::V2::ObservabilityPipelineDataAttributes.new({
      config: DatadogAPIClient::V2::ObservabilityPipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::ObservabilityPipelineDatadogLogsDestination.new({
            id: "datadog-logs-destination",
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
      name: "Main Observability Pipeline",
    }),
    type: "pipelines",
  }),
})
p api_instance.create_pipeline(body)
