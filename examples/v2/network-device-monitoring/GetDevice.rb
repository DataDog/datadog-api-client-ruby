# Get the device details returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new
p api_instance.get_device("default_device")
