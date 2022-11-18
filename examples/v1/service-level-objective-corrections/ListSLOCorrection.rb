# Get all SLO corrections returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
opts = {
  offset: 1,
  limit: 1,
}
p api_instance.list_slo_correction(opts)
