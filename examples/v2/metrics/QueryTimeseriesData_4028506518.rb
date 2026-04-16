# Timeseries cross product query with apm_resource_stats data source returns "OK" response

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
        DatadogAPIClient::V2::ApmResourceStatsQuery.new({
          data_source: DatadogAPIClient::V2::ApmResourceStatsDataSource::APM_RESOURCE_STATS,
          name: "a",
          env: "staging",
          service: "azure-bill-import",
          stat: DatadogAPIClient::V2::ApmResourceStatName::HITS,
          operation_name: "cassandra.query",
          group_by: [
            "resource_name",
          ],
          primary_tag_name: "datacenter",
          primary_tag_value: "*",
        }),
      ],
      to: 1636629071000,
    }),
    type: DatadogAPIClient::V2::TimeseriesFormulaRequestType::TIMESERIES_REQUEST,
  }),
})
p api_instance.query_timeseries_data(body)
