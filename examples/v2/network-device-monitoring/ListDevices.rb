# Get the list of devices returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new
opts = {
  page_size: 1,
  page_number: 0,
  filter_tag: "device_namespace:default",
}
p api_instance.list_devices(opts)
