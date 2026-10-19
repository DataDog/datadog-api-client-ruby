# Update a derived metric returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

# there is a valid "derived_metric" in the system
DERIVED_METRIC_DATA_ID = ENV["DERIVED_METRIC_DATA_ID"]

body = DatadogAPIClient::V2::DerivedMetricCreateRequest.new({
  data: DatadogAPIClient::V2::DerivedMetricCreateData.new({
    attributes: DatadogAPIClient::V2::DerivedMetricAttributes.new({
      definition: DatadogAPIClient::V2::DerivedMetricDefinition.new({
        formula: "a * 2",
        queries: [
          DatadogAPIClient::V2::DerivedMetricQuery.new({
            data_source: "metrics",
            name: "a",
            query: "avg:system.cpu.user{*}",
          }),
        ],
      }),
    }),
    id: DERIVED_METRIC_DATA_ID,
    type: DatadogAPIClient::V2::DerivedMetricsType::DERIVED_METRICS,
  }),
})
p api_instance.update_derived_metric(DERIVED_METRIC_DATA_ID, body)
