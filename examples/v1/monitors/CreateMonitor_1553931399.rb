# Create a Data Quality monitor with a model configuration returns "OK" response

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
        monitor_options: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityMonitorOptions.new({
          model_configuration: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityModelConfiguration.new({
            auto_resolve_days: 7,
            enable_flatline_detection: true,
            function: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityDiffFunction::DIFF,
            min_lower_bound_size: 10.0,
            min_upper_bound_size: 10.0,
            model_bounds_override: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityModelBoundsOverride::UPPER_ONLY,
          }),
        }),
      }),
    ],
  }),
})
p api_instance.create_monitor(body)
