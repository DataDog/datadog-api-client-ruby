# Query scalar data across multiple products returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_scalar_data".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::ScalarFormulaQueryRequest.new({
  data: DatadogAPIClient::V2::ScalarFormulaRequest.new({
    attributes: DatadogAPIClient::V2::ScalarFormulaRequestAttributes.new({
      formulas: [
        DatadogAPIClient::V2::QueryFormula.new({
          formula: "a+b",
          limit: DatadogAPIClient::V2::FormulaLimit.new({
            count: 10,
            order: DatadogAPIClient::V2::QuerySortOrder::DESC,
          }),
        }),
      ],
      from: 1568899800000,
      queries: [
        DatadogAPIClient::V2::MetricsScalarQuery.new({
          aggregator: DatadogAPIClient::V2::MetricsAggregator::AVG,
          data_source: DatadogAPIClient::V2::MetricsDataSource::METRICS,
          query: "avg:system.cpu.user{*} by {env}",
        }),
      ],
      to: 1568923200000,
    }),
    type: DatadogAPIClient::V2::ScalarFormulaRequestType::SCALAR_REQUEST,
  }),
})
p api_instance.query_scalar_data(body)
