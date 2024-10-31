# Update a rum-based metric returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RumMetricsAPI.new

# there is a valid "rum_metric" in the system
RUM_METRIC_DATA_ID = ENV["RUM_METRIC_DATA_ID"]

body = DatadogAPIClient::V2::RumMetricUpdateRequest.new({
  data: DatadogAPIClient::V2::RumMetricUpdateData.new({
    id: RUM_METRIC_DATA_ID,
    type: DatadogAPIClient::V2::RumMetricType::RUM_METRICS,
    attributes: DatadogAPIClient::V2::RumMetricUpdateAttributes.new({
      compute: DatadogAPIClient::V2::RumMetricUpdateCompute.new({
        include_percentiles: false,
      }),
      filter: DatadogAPIClient::V2::RumMetricFilter.new({
        query: "@service:rum-config",
      }),
      group_by: [
        DatadogAPIClient::V2::RumMetricGroupBy.new({
          path: "@browser.version",
          tag_name: "browser_version",
        }),
      ],
    }),
  }),
})
p api_instance.update_rum_metric(RUM_METRIC_DATA_ID, body)
