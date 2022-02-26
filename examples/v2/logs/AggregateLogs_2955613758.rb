# Aggregate compute events with group by returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new

body = DatadogAPIClient::V2::LogsAggregateRequest.new({
  compute: [
    DatadogAPIClient::V2::LogsCompute.new({
      aggregation: DatadogAPIClient::V2::LogsAggregationFunction::COUNT,
      interval: "5m",
      type: DatadogAPIClient::V2::LogsComputeType::TIMESERIES,
    }),
  ],
  filter: DatadogAPIClient::V2::LogsQueryFilter.new({
    from: "now-15m",
    indexes: [
      "main",
    ],
    query: "*",
    to: "now",
  }),
  group_by: [
    DatadogAPIClient::V2::LogsGroupBy.new({
      facet: "host",
      missing: "miss",
      sort: DatadogAPIClient::V2::LogsAggregateSort.new({
        type: DatadogAPIClient::V2::LogsAggregateSortType::MEASURE,
        order: DatadogAPIClient::V2::LogsSortOrder::ASCENDING,
        aggregation: DatadogAPIClient::V2::LogsAggregationFunction::PERCENTILE_90,
        metric: "@duration",
      }),
      total: "recall",
    }),
  ],
})
p api_instance.aggregate_logs(body)
