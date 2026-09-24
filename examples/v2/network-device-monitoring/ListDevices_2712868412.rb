# Get the list of devices returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::NetworkDeviceMonitoringAPI.new
api_instance.list_devices_with_pagination() { |item| puts item }
