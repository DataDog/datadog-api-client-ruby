# Check if SLOs can be safely deleted returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::ServiceLevelObjectivesAPI.new
p api_instance.check_can_delete_slo("ids")
