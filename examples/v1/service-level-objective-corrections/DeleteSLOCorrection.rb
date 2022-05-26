# Delete an SLO correction returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new
api_instance.delete_slo_correction("slo_correction_id")
