# Get a device returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_eudm_device".to_sym] = true
end
api_instance = DatadogAPIClient::V2::EndUserDeviceMonitoringAPI.new
p api_instance.get_eudm_device("device_id")
