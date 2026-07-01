# Validate an observability pipeline with parse grok processor source rules returns "OK" response

require "datadog_api_client"
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
              "datadog-agent-source",
            ],
            processors: [
              DatadogAPIClient::V2::ObservabilityPipelineParseGrokProcessor.new({
                enabled: true,
                id: "parse-grok-processor",
                include: "*",
                type: DatadogAPIClient::V2::ObservabilityPipelineParseGrokProcessorType::PARSE_GROK,
                rules: [
                  DatadogAPIClient::V2::ObservabilityPipelineParseGrokProcessorRule.new({
                    source: "message",
                    match_rules: [
                      DatadogAPIClient::V2::ObservabilityPipelineParseGrokProcessorRuleMatchRule.new({
                        name: "MyParsingRule",
                        rule: "%{word:user}",
                      }),
                    ],
                  }),
                ],
              }),
            ],
          }),
        ],
        sources: [
          DatadogAPIClient::V2::ObservabilityPipelineDatadogAgentSource.new({
            id: "datadog-agent-source",
            type: DatadogAPIClient::V2::ObservabilityPipelineDatadogAgentSourceType::DATADOG_AGENT,
          }),
        ],
      }),
      name: "Pipeline with Parse Grok Source Rules",
    }),
    type: "pipelines",
  }),
})
p api_instance.validate_pipeline(body)
