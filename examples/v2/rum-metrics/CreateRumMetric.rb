# Create a rum-based metric returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumMetricsAPI.new

body = DatadogAPIClient::V2::RumMetricCreateRequest.new({
  data: DatadogAPIClient::V2::RumMetricCreateData.new({
    attributes: DatadogAPIClient::V2::RumMetricCreateAttributes.new({
      compute: DatadogAPIClient::V2::RumMetricCompute.new({
        aggregation_type: DatadogAPIClient::V2::RumMetricComputeAggregationType::DISTRIBUTION,
        include_percentiles: true,
        path: "@duration",
      }),
      event_type: DatadogAPIClient::V2::RumMetricEventType::SESSION,
      filter: DatadogAPIClient::V2::RumMetricFilter.new({
        query: "@service:web-ui",
      }),
      group_by: [
        DatadogAPIClient::V2::RumMetricGroupBy.new({
          path: "@browser.name",
          tag_name: "browser_name",
        }),
      ],
      uniqueness: DatadogAPIClient::V2::RumMetricUniqueness.new({
        _when: DatadogAPIClient::V2::RumMetricUniquenessWhen::WHEN_MATCH,
      }),
    }),
    id: "rum.sessions.webui.count",
    type: DatadogAPIClient::V2::RumMetricType::RUM_METRICS,
  }),
})
p api_instance.create_rum_metric(body)
