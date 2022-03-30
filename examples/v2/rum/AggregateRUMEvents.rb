# Aggregate RUM events returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new

body = DatadogAPIClient::V2::RUMAggregateRequest.new({
  compute: [
    DatadogAPIClient::V2::RUMCompute.new({
      aggregation: DatadogAPIClient::V2::RUMAggregationFunction::PERCENTILE_90,
      metric: "@view.time_spent",
      type: DatadogAPIClient::V2::RUMComputeType::TOTAL,
    }),
  ],
  filter: DatadogAPIClient::V2::RUMQueryFilter.new({
    from: "now-15m",
    query: "@type:view AND @session.type:user",
    to: "now",
  }),
  group_by: [
    DatadogAPIClient::V2::RUMGroupBy.new({
      facet: "@view.time_spent",
      limit: 10,
      total: false,
    }),
  ],
  options: DatadogAPIClient::V2::RUMQueryOptions.new({
    timezone: "GMT",
  }),
  page: DatadogAPIClient::V2::RUMQueryPageOptions.new({
    limit: 25,
  }),
})
p api_instance.aggregate_rum_events(body)
