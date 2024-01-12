# Delete a suppression rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "suppression" in the system
SUPPRESSION_DATA_ID = ENV["SUPPRESSION_DATA_ID"]
api_instance.delete_security_monitoring_suppression(SUPPRESSION_DATA_ID)
