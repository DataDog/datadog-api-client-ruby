# Update a span-based metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SpansMetricsAPI.new

# there is a valid "spans_metric" in the system
SPANS_METRIC_DATA_ATTRIBUTES_FILTER_QUERY = ENV["SPANS_METRIC_DATA_ATTRIBUTES_FILTER_QUERY"]
SPANS_METRIC_DATA_ID = ENV["SPANS_METRIC_DATA_ID"]

body = DatadogAPIClient::V2::SpansMetricUpdateRequest.new({
  data: DatadogAPIClient::V2::SpansMetricUpdateData.new({
    attributes: DatadogAPIClient::V2::SpansMetricUpdateAttributes.new({
      compute: DatadogAPIClient::V2::SpansMetricUpdateCompute.new({
        include_percentiles: false,
      }),
      filter: DatadogAPIClient::V2::SpansMetricFilter.new({
        query: "@http.status_code:200 service:my-service-updated",
      }),
      group_by: [
        DatadogAPIClient::V2::SpansMetricGroupBy.new({
          path: "resource_name",
          tag_name: "resource_name",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::SpansMetricType::SPANS_METRICS,
  }),
})
p api_instance.update_spans_metric(SPANS_METRIC_DATA_ID, body)
