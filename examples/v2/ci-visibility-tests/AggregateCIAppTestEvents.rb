# Aggregate tests events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityTestsAPI.new

body = DatadogAPIClient::V2::CIAppTestsAggregateRequest.new({
  compute: [
    DatadogAPIClient::V2::CIAppCompute.new({
      aggregation: DatadogAPIClient::V2::CIAppAggregationFunction::COUNT,
      metric: "@test.is_flaky",
      type: DatadogAPIClient::V2::CIAppComputeType::TOTAL,
    }),
  ],
  filter: DatadogAPIClient::V2::CIAppTestsQueryFilter.new({
    from: "now-15m",
    query: "@language:(python OR go)",
    to: "now",
  }),
  group_by: [
    DatadogAPIClient::V2::CIAppTestsGroupBy.new({
      facet: "@git.branch",
      limit: 10,
      sort: DatadogAPIClient::V2::CIAppAggregateSort.new({
        order: DatadogAPIClient::V2::CIAppSortOrder::ASCENDING,
      }),
      total: false,
    }),
  ],
  options: DatadogAPIClient::V2::CIAppQueryOptions.new({
    timezone: "GMT",
  }),
})
p api_instance.aggregate_ci_app_test_events(body)
