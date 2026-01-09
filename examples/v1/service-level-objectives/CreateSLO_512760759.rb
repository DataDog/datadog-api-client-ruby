# Create a new metric SLO object using sli_specification returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new

body = DatadogAPIClient::V1::ServiceLevelObjectiveRequest.new({
  type: DatadogAPIClient::V1::SLOType::METRIC,
  description: "Metric SLO using sli_specification",
  name: "Example-Service-Level-Objective",
  sli_specification: DatadogAPIClient::V1::SLOCountSpec.new({
    count: DatadogAPIClient::V1::SLOCountDefinition.new({
      good_events_formula: DatadogAPIClient::V1::SLOFormula.new({
        formula: "query1 - query2",
      }),
      total_events_formula: DatadogAPIClient::V1::SLOFormula.new({
        formula: "query1",
      }),
      queries: [
        DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
          data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
          name: "query1",
          query: "sum:httpservice.hits{*}.as_count()",
        }),
        DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
          data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
          name: "query2",
          query: "sum:httpservice.errors{*}.as_count()",
        }),
      ],
    }),
  }),
  tags: [
    "env:prod",
    "type:count",
  ],
  thresholds: [
    DatadogAPIClient::V1::SLOThreshold.new({
      target: 99.0,
      target_display: "99.0",
      timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS,
      warning: 99.5,
      warning_display: "99.5",
    }),
  ],
  timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS,
  target_threshold: 99.0,
  warning_threshold: 99.5,
})
p api_instance.create_slo(body)
