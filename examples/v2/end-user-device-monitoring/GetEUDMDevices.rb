# Get all devices returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::EndUserDeviceMonitoringAPI.new
p api_instance.get_eudm_devices()
