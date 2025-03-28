# Get aggregated connections returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_aggregated_connections".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudNetworkMonitoringAPI.new
p api_instance.get_aggregated_connections()
