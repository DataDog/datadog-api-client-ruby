# Create a Data Quality monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::DATA_QUALITY_ALERT,
  query: 'formula("query1").last("5m") > 100',
  message: "Data quality alert triggered",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  priority: 3,
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 100,
    }),
    variables: [
      DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityQueryDefinition.new({
        name: "query1",
        data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityDataSource::DATA_QUALITY_METRICS,
        measure: "row_count",
        filter: "search for column where `database:production AND table:users`",
        group_by: [
          "entity_id",
        ],
      }),
    ],
  }),
})
p api_instance.create_monitor(body)
