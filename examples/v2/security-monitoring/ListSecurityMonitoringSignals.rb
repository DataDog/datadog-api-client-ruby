# Get a quick list of security signals returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.list_security_monitoring_signals()
