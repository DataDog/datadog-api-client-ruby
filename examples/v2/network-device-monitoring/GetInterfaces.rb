# Get the list of interfaces of the device returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new
opts = {
  get_ip_addresses: true,
}
p api_instance.get_interfaces("default:1.2.3.4", opts)
