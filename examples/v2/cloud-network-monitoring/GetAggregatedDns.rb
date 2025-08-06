# Get all aggregated DNS traffic returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudNetworkMonitoringAPI.new
p api_instance.get_aggregated_dns()
