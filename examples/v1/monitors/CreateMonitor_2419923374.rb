# Create a monitor with a metrics formula variable returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::QUERY_ALERT,
  query: 'formula("query1 / query2").rollup("avg").last("5m") > threshold',
  message: "some message Notify: @hipchat-channel",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical_query: 'formula("query1 / query2").rollup("p99").last("1w").multiplier(1.5)',
    }),
    variables: [
      DatadogAPIClient::V1::MonitorFormulaAndFunctionMetricQueryDefinition.new({
        name: "query1",
        data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionMetricQueryDataSource::METRICS,
        query: "sum:trace.http.request.errors{*}.as_count()",
      }),
      DatadogAPIClient::V1::MonitorFormulaAndFunctionMetricQueryDefinition.new({
        name: "query2",
        data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionMetricQueryDataSource::METRICS,
        query: "sum:trace.http.request.hits{*}.as_count()",
      }),
    ],
  }),
})
p api_instance.create_monitor(body)
