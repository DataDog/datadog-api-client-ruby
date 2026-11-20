# Validate an observability pipeline with CrowdStrike FDR source returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

body = DatadogAPIClient::V2::ObservabilityPipelineSpec.new({
  data: DatadogAPIClient::V2::ObservabilityPipelineSpecData.new({
    attributes: DatadogAPIClient::V2::ObservabilityPipelineDataAttributes.new({
      config: DatadogAPIClient::V2::ObservabilityPipelineConfig.new({
        destinations: [
          DatadogAPIClient::V2::ObservabilityPipelineDatadogLogsDestination.new({
            id: "datadog-logs-destination",
            inputs: [
              "my-processor-group",
            ],
            type: DatadogAPIClient::V2::ObservabilityPipelineDatadogLogsDestinationType::DATADOG_LOGS,
          }),
        ],
        processor_groups: [
          DatadogAPIClient::V2::ObservabilityPipelineConfigProcessorGroup.new({
            enabled: true,
            id: "my-processor-group",
            include: "service:my-service",
            inputs: [
              "crowdstrike-fdr-source",
            ],
            processors: [
              DatadogAPIClient::V2::ObservabilityPipelineFilterProcessor.new({
                enabled: true,
                id: "filter-processor",
                include: "service:my-service",
                type: DatadogAPIClient::V2::ObservabilityPipelineFilterProcessorType::FILTER,
              }),
            ],
          }),
        ],
        sources: [
          DatadogAPIClient::V2::ObservabilityPipelineCrowdStrikeFdrSource.new({
            id: "crowdstrike-fdr-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineCrowdStrikeFdrSourceType::CROWDSTRIKE_FDR,
            region: "us-west-2",
            url_key: "CROWDSTRIKE_FDR_SQS_URL",
            access_key_id_key: "CROWDSTRIKE_FDR_AWS_ACCESS_KEY_ID",
            secret_access_key_key: "CROWDSTRIKE_FDR_AWS_SECRET_ACCESS_KEY",
            visibility_timeout_secs: 300,
            client_concurrency: 4,
            max_number_of_messages: 1,
          }),
        ],
      }),
      name: "Pipeline with CrowdStrike FDR Source",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
