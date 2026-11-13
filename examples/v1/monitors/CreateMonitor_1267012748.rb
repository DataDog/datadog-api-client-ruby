# Create a Data Jobs duration monitor returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::DATA_JOBS_ALERT,
  query: 'formula("job_duration(run_query)").detection(anomaly).by(name,workspace_name,entity_id) > 0',
  message: "Data jobs duration alert triggered",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  options: DatadogAPIClient::V1::MonitorOptions.new({
    variables: [
      DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityQueryDefinition.new({
        name: "run_query",
        data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityDataSource::DATA_QUALITY_METRICS,
        schema_version: "0.0.1",
        measure: "duration",
        filter: "search for databricks_job",
        run_filter: "env:prod",
        group_by: [
          "name",
          "workspace_name",
          "entity_id",
        ],
        monitor_options: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityMonitorOptions.new({
          detection_type: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataQualityDetectionType::ANOMALY,
          consecutive_runs: 2,
        }),
      }),
    ],
  }),
})
p api_instance.create_monitor(body)
