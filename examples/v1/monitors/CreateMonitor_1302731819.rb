# Create a Data Jobs monitor with the aastra query dialect returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::DATA_JOBS_ALERT,
  query: 'formula("failed_runs(run_query)").by(name,workspace_name,entity_id).last(1d) > 0',
  message: "Data jobs alert triggered",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 0,
    }),
    variables: [
      DatadogAPIClient::V1::MonitorFormulaAndFunctionDataJobsQueryDefinition.new({
        name: "run_query",
        jobs_query: "search for databricks_job",
        job_type: "databricks.job",
        query_dialect: "aastra",
        run_filter: "env:prod",
        monitor_options: DatadogAPIClient::V1::MonitorFormulaAndFunctionDataJobsMonitorOptions.new({
          alert_on_every_failure: true,
        }),
      }),
    ],
  }),
})
p api_instance.create_monitor(body)
