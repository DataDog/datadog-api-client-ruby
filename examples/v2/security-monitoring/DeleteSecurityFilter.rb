# Delete a security filter returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
api_instance.delete_security_filter("security_filter_id")
