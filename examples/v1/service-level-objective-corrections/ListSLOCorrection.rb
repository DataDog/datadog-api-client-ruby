# Get all SLO corrections returns "OK" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
p api_instance.list_slo_correction()
