# Delete a historical metrics configuration returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_historical_metrics_configuration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
api_instance.delete_historical_metrics_configuration("metric_name")
