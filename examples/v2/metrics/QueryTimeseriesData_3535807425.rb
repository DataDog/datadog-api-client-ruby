# Timeseries cross product query with apm_metrics data source and span_kind returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MetricsAPI.new

body = DatadogAPIClient::V2::TimeseriesFormulaQueryRequest.new({
  data: DatadogAPIClient::V2::TimeseriesFormulaRequest.new({
    attributes: DatadogAPIClient::V2::TimeseriesFormulaRequestAttributes.new({
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
      interval: 5000,
      queries: [
        DatadogAPIClient::V2::ApmMetricsQuery.new({
          data_source: DatadogAPIClient::V2::ApmMetricsDataSource::APM_METRICS,
          name: "a",
          stat: DatadogAPIClient::V2::ApmMetricsStat::HITS,
          service: "web-store",
          query_filter: "env:prod",
          span_kind: DatadogAPIClient::V2::ApmMetricsSpanKind::SERVER,
          group_by: [
            "resource_name",
          ],
        }),
      ],
      to: 1636629071000,
    }),
    type: DatadogAPIClient::V2::TimeseriesFormulaRequestType::TIMESERIES_REQUEST,
  }),
})
p api_instance.query_timeseries_data(body)
