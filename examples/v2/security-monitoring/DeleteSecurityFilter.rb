# Delete a security filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "security_filter" in the system
SECURITY_FILTER_DATA_ID = ENV["SECURITY_FILTER_DATA_ID"]
api_instance.delete_security_filter(SECURITY_FILTER_DATA_ID)
