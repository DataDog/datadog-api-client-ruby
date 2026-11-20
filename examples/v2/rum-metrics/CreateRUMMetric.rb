# Create a RUM-based metric returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMMetricsAPI.new

body = DatadogAPIClient::V2::RUMMetricCreateRequest.new({
  data: DatadogAPIClient::V2::RUMMetricCreateData.new({
    attributes: DatadogAPIClient::V2::RUMMetricCreateAttributes.new({
      compute: DatadogAPIClient::V2::RUMMetricCompute.new({
        aggregation_type: DatadogAPIClient::V2::RUMMetricComputeAggregationType::DISTRIBUTION,
        include_percentiles: true,
        path: "@duration",
      }),
      event_type: DatadogAPIClient::V2::RUMMetricEventType::SESSION,
      filter: DatadogAPIClient::V2::RUMMetricFilter.new({
        query: "@service:web-ui",
      }),
      group_by: [
        DatadogAPIClient::V2::RUMMetricGroupBy.new({
          path: "@browser.name",
          tag_name: "browser_name",
        }),
      ],
      uniqueness: DatadogAPIClient::V2::RUMMetricUniqueness.new({
        _when: DatadogAPIClient::V2::RUMMetricUniquenessWhen::WHEN_MATCH,
      }),
    }),
    id: "examplerummetric",
    type: DatadogAPIClient::V2::RUMMetricType::RUM_METRICS,
  }),
})
p api_instance.create_rum_metric(body)
