# Update a RUM-based metric returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMMetricsAPI.new

# there is a valid "rum_metric" in the system
RUM_METRIC_DATA_ID = ENV["RUM_METRIC_DATA_ID"]

body = DatadogAPIClient::V2::RUMMetricUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMMetricUpdateData.new({
    id: RUM_METRIC_DATA_ID,
    type: DatadogAPIClient::V2::RUMMetricType::RUM_METRICS,
    attributes: DatadogAPIClient::V2::RUMMetricUpdateAttributes.new({
      compute: DatadogAPIClient::V2::RUMMetricUpdateCompute.new({
        include_percentiles: false,
      }),
      filter: DatadogAPIClient::V2::RUMMetricFilter.new({
        query: "@service:rum-config",
      }),
      group_by: [
        DatadogAPIClient::V2::RUMMetricGroupBy.new({
          path: "@browser.version",
          tag_name: "browser_version",
        }),
      ],
    }),
  }),
})
p api_instance.update_rum_metric(RUM_METRIC_DATA_ID, body)
