# Update a pipeline returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "",
  processors: [
    DatadogAPIClient::V1::LogsGrokParser.new({
      grok: DatadogAPIClient::V1::LogsGrokParserRules.new({
        match_rules: 'rule_name_1 foo\nrule_name_2 bar\n',
        support_rules: 'rule_name_1 foo\nrule_name_2 bar\n',
      }),
      is_enabled: false,
      samples: [],
      source: "message",
      type: DatadogAPIClient::V1::LogsGrokParserType::GROK_PARSER,
    }),
  ],
})
p api_instance.update_logs_pipeline("pipeline_id", body)
