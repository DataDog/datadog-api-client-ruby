# Scalar cross product query with apm_dependency_stats data source returns "OK" response

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
        DatadogAPIClient::V2::ApmDependencyStatsQuery.new({
          data_source: DatadogAPIClient::V2::ApmDependencyStatsDataSource::APM_DEPENDENCY_STATS,
          name: "a",
          env: "ci",
          service: "cassandra",
          stat: DatadogAPIClient::V2::ApmDependencyStatName::AVG_DURATION,
          operation_name: "cassandra.query",
          resource_name: "DELETE FROM monitor_history.monitor_state_change_history WHERE org_id = ? AND monitor_id IN ? AND group = ?",
          primary_tag_name: "datacenter",
          primary_tag_value: "edge-eu1.prod.dog",
        }),
      ],
      to: 1636629071000,
    }),
    type: DatadogAPIClient::V2::ScalarFormulaRequestType::SCALAR_REQUEST,
  }),
})
p api_instance.query_scalar_data(body)
