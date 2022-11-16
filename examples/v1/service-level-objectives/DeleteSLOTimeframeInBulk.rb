# Bulk Delete SLO Timeframes returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new

body = {
  id1: [
    DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS,
    DatadogAPIClient::V1::SLOTimeframe::THIRTY_DAYS,
  ], id2: [
    DatadogAPIClient::V1::SLOTimeframe::SEVEN_DAYS,
    DatadogAPIClient::V1::SLOTimeframe::THIRTY_DAYS,
  ],
}
p api_instance.delete_slo_timeframe_in_bulk(body)
