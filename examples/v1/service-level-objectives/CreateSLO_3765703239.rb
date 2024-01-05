# Create a time-slice SLO object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new

body = DatadogAPIClient::V1::ServiceLevelObjectiveRequest.new({
  type: DatadogAPIClient::V1::SLOType::TIME_SLICE,
  description: "string",
  name: "Example-Service-Level-Objective",
  sli_specification: DatadogAPIClient::V1::SLOTimeSliceSpec.new({
    time_slice: DatadogAPIClient::V1::SLOTimeSliceCondition.new({
      query: DatadogAPIClient::V1::SLOTimeSliceQuery.new({
        formulas: [
          DatadogAPIClient::V1::SLOFormula.new({
            formula: "query1",
          }),
        ],
        queries: [
          DatadogAPIClient::V1::FormulaAndFunctionMetricQueryDefinition.new({
            data_source: DatadogAPIClient::V1::FormulaAndFunctionMetricDataSource::METRICS,
            name: "query1",
            query: "trace.servlet.request{env:prod}",
          }),
        ],
      }),
      comparator: DatadogAPIClient::V1::SLOTimeSliceComparator::GREATER,
      threshold: 5,
    }),
  }),
  tags: [
    "env:prod",
  ],
  thresholds: [
    DatadogAPIClient::V1::SLOThreshold.new({
      target: 97.0,
      target_display: "97.0",
      timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS,
      warning: 98,
      warning_display: "98.0",
    }),
  ],
  timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS,
  target_threshold: 97.0,
  warning_threshold: 98,
})
p api_instance.create_slo(body)
