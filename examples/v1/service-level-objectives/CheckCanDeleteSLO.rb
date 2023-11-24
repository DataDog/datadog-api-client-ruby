# Check if SLOs can be safely deleted returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new

# there is a valid "slo" in the system
SLO_DATA_0_ID = ENV["SLO_DATA_0_ID"]
p api_instance.check_can_delete_slo(SLO_DATA_0_ID)
