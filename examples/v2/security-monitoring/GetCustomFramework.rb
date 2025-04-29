# Get a custom framework returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_custom_framework("create-framework-new", "10")
