# Get the list of devices returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new
p api_instance.list_devices()
