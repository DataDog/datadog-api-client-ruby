# Get all aggregated DNS traffic returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_aggregated_dns".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudNetworkMonitoringAPI.new
p api_instance.get_aggregated_dns()
