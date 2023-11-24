# Delete an SLO correction returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectiveCorrectionsAPI.new

# there is a valid "correction" for "slo"
CORRECTION_DATA_ID = ENV["CORRECTION_DATA_ID"]
api_instance.delete_slo_correction(CORRECTION_DATA_ID)
