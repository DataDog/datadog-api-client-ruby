# Get a historical metrics configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_historical_metrics_configuration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
p api_instance.get_historical_metrics_configuration("metric_name")
