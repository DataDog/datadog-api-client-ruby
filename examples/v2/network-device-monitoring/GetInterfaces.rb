# Get the list of interfaces of the device returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new
p api_instance.get_interfaces("default:1.2.3.4")
