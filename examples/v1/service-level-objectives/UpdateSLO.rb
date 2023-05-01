# Update an SLO returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new

# there is a valid "slo" in the system
SLO_DATA_0_ID = ENV["SLO_DATA_0_ID"]
SLO_DATA_0_NAME = ENV["SLO_DATA_0_NAME"]

body = DatadogAPIClient::V1::ServiceLevelObjective.new({
  type: DatadogAPIClient::V1::SLOType::METRIC,
  name: SLO_DATA_0_NAME,
  thresholds: [
    DatadogAPIClient::V1::SLOThreshold.new({
      target: 97.0,
      timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS,
      warning: 98.0,
    }),
  ],
  timeframe: DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS,
  target_threshold: 97.0,
  warning_threshold: 98,
  query: DatadogAPIClient::V1::ServiceLevelObjectiveQuery.new({
    numerator: "sum:httpservice.hits{code:2xx}.as_count()",
    denominator: "sum:httpservice.hits{!code:3xx}.as_count()",
  }),
})
p api_instance.update_slo(SLO_DATA_0_ID, body)
