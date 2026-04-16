# Scalar cross product query with slo data source returns "OK" response

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
        DatadogAPIClient::V2::SloQuery.new({
          data_source: DatadogAPIClient::V2::SloDataSource::SLO,
          name: "a",
          slo_id: "12345678910",
          measure: DatadogAPIClient::V2::SlosMeasure::SLO_STATUS,
          slo_query_type: DatadogAPIClient::V2::SlosQueryType::METRIC,
          group_mode: DatadogAPIClient::V2::SlosGroupMode::OVERALL,
          additional_query_filters: "*",
        }),
      ],
      to: 1636629071000,
    }),
    type: DatadogAPIClient::V2::ScalarFormulaRequestType::SCALAR_REQUEST,
  }),
})
p api_instance.query_scalar_data(body)
