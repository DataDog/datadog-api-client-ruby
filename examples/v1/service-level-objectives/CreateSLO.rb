# Create an SLO object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new

body = DatadogAPIClient::V1::ServiceLevelObjectiveRequest.new({
  type: DatadogAPIClient::V1::SLOType::METRIC,
  description: "string",
  groups: [
    "env:test",
    "role:mysql",
  ],
  monitor_ids: [],
  name: "Example-Service-Level-Objective",
  query: DatadogAPIClient::V1::ServiceLevelObjectiveQuery.new({
    denominator: "sum:httpservice.hits{!code:3xx}.as_count()",
    numerator: "sum:httpservice.hits{code:2xx}.as_count()",
  }),
  tags: [
    "env:prod",
    "app:core",
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
