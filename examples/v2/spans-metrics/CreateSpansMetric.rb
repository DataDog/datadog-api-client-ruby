# Create a span-based metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SpansMetricsAPI.new

body = DatadogAPIClient::V2::SpansMetricCreateRequest.new({
  data: DatadogAPIClient::V2::SpansMetricCreateData.new({
    attributes: DatadogAPIClient::V2::SpansMetricCreateAttributes.new({
      compute: DatadogAPIClient::V2::SpansMetricCompute.new({
        aggregation_type: DatadogAPIClient::V2::SpansMetricComputeAggregationType::DISTRIBUTION,
        include_percentiles: false,
        path: "@duration",
      }),
      filter: DatadogAPIClient::V2::SpansMetricFilter.new({
        query: "@http.status_code:200 service:my-service",
      }),
      group_by: [
        DatadogAPIClient::V2::SpansMetricGroupBy.new({
          path: "resource_name",
          tag_name: "resource_name",
        }),
      ],
    }),
    id: "ExampleSpansMetric",
    type: DatadogAPIClient::V2::SpansMetricType::SPANS_METRICS,
  }),
})
p api_instance.create_spans_metric(body)
