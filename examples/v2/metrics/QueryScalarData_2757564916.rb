# Scalar cross product query with logs data source returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::ScalarFormulaQueryRequest.new({
  data: DatadogAPIClient::V2::ScalarFormulaRequest.new({
    attributes: DatadogAPIClient::V2::ScalarFormulaRequestAttributes.new({
      formulas: [
        DatadogAPIClient::V2::QueryFormula.new({
          formula: "a",
          limit: DatadogAPIClient::V2::FormulaLimit.new({
            count: 10,
            order: DatadogAPIClient::V2::QuerySortOrder::DESC,
          }),
        }),
      ],
      from: 1636625471000,
      queries: [
        DatadogAPIClient::V2::EventsScalarQuery.new({
          data_source: DatadogAPIClient::V2::EventsDataSource::LOGS,
          name: "a",
          compute: DatadogAPIClient::V2::EventsCompute.new({
            aggregation: DatadogAPIClient::V2::EventsAggregation::COUNT,
          }),
          search: DatadogAPIClient::V2::EventsSearch.new({
            query: "*",
          }),
          indexes: [
            "*",
          ],
        }),
      ],
      to: 1636629071000,
    }),
    type: DatadogAPIClient::V2::ScalarFormulaRequestType::SCALAR_REQUEST,
  }),
})
p api_instance.query_scalar_data(body)
