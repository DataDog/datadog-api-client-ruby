# Get all SLO corrections returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
opts = {
  limit: 2,
}
api_instance.list_slo_correction_with_pagination(opts) { |item| puts item }
