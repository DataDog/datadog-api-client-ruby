# Create a Data Jobs monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::DATA_JOBS_ALERT,
  query: 'formula("failed_runs(run_query)").by(job_name,workspace_name).last(10d) > 0',
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
        jobs_query: "job_name:*",
        job_type: "databricks.job",
        query_dialect: "metric",
      }),
    ],
  }),
})
p api_instance.create_monitor(body)
