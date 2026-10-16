# Create a derived metric returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::DerivedMetricCreateRequest.new({
  data: DatadogAPIClient::V2::DerivedMetricCreateData.new({
    attributes: DatadogAPIClient::V2::DerivedMetricAttributes.new({
      definition: DatadogAPIClient::V2::DerivedMetricDefinition.new({
        formula: "a",
        queries: [
          DatadogAPIClient::V2::DerivedMetricQuery.new({
            data_source: "metrics",
            name: "a",
            query: "avg:system.cpu.user{*}",
          }),
        ],
      }),
    }),
    id: "test.derived.examplemetric",
    type: DatadogAPIClient::V2::DerivedMetricsType::DERIVED_METRICS,
  }),
})
p api_instance.create_derived_metric(body)
