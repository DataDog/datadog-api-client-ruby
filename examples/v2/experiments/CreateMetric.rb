# Create metric returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

body = DatadogAPIClient::V2::ExperimentsCreateMetricV2Request.new({
  data: DatadogAPIClient::V2::ExperimentsCreateMetricV2RequestData.new({
    type: DatadogAPIClient::V2::MetricType::METRICS,
    attributes: DatadogAPIClient::V2::ExperimentsCreateMetricNumeratorAttributes.new({
      name: "ex-14bb9543f523edde",
      data_source_type: DatadogAPIClient::V2::ExperimentsCreateMetricV2RequestDataAttributesDataSourceType::DATADOG,
      desired_change: DatadogAPIClient::V2::ExperimentsCreateMetricV2RequestDataAttributesDesiredChange::METRIC_INCREASES,
      numerator_aggregation: DatadogAPIClient::V2::ExperimentsDatadogMetricAggregationInput.new({
        operation: "sum",
        datadog_metric_measure: DatadogAPIClient::V2::ExperimentsDatadogMetricMeasureInput.new({
          name: "ex-14bb9543f523edde view duration",
          source_type: "PRODUCT_ANALYTICS",
          source_subtype: "RUM_VIEWS",
          column_type: "double",
          column_name: "@view.time_spent",
        }),
      }),
    }),
  }),
})
p api_instance.create_metric(body)
