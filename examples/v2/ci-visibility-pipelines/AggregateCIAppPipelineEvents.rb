# Aggregate pipelines events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityPipelinesAPI.new

body = DatadogAPIClient::V2::CIAppPipelinesAggregateRequest.new({
  compute: [
    DatadogAPIClient::V2::CIAppCompute.new({
      aggregation: DatadogAPIClient::V2::CIAppAggregationFunction::PERCENTILE_90,
      metric: "@duration",
      type: DatadogAPIClient::V2::CIAppComputeType::TOTAL,
    }),
  ],
  filter: DatadogAPIClient::V2::CIAppPipelinesQueryFilter.new({
    from: "now-15m",
    query: "@ci.provider.name:(gitlab OR github)",
    to: "now",
  }),
  group_by: [
    DatadogAPIClient::V2::CIAppPipelinesGroupBy.new({
      facet: "@ci.status",
      limit: 10,
      total: false,
    }),
  ],
  options: DatadogAPIClient::V2::CIAppQueryOptions.new({
    timezone: "GMT",
  }),
})
p api_instance.aggregate_ci_app_pipeline_events(body)
