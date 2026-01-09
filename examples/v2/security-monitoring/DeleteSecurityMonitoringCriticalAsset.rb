# Delete a critical asset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "critical_asset" in the system
CRITICAL_ASSET_DATA_ID = ENV["CRITICAL_ASSET_DATA_ID"]
api_instance.delete_security_monitoring_critical_asset(CRITICAL_ASSET_DATA_ID)
