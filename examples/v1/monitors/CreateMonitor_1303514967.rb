# Create a Cost Monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example Monitor",
  type: DatadogAPIClient::V1::MonitorType::COST_ALERT,
  query: 'formula("exclude_null(query1)").last("7d").anomaly(direction="above", threshold=10) >= 5',
  message: "some message Notify: @hipchat-channel",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  priority: 3,
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 5,
      warning: 3,
    }),
    variables: [
      DatadogAPIClient::V1::MonitorFormulaAndFunctionCostQueryDefinition.new({
        data_source: DatadogAPIClient::V1::MonitorFormulaAndFunctionCostDataSource::CLOUD_COST,
        query: "sum:aws.cost.net.amortized.shared.resources.allocated{aws_product IN (amplify ,athena, backup, bedrock ) } by {aws_product}.rollup(sum, 86400)",
        name: "query1",
        aggregator: DatadogAPIClient::V1::MonitorFormulaAndFunctionCostAggregator::SUM,
      }),
    ],
    include_tags: true,
  }),
})
p api_instance.create_monitor(body)
