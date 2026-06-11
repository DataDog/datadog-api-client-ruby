# List network health insights returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_network_health_insights".to_sym] = true
end
api_instance = DatadogAPIClient::V2::NetworkHealthInsightsAPI.new
p api_instance.list_network_health_insights()
