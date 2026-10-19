# Get a Temporal Cloud OpenMetrics account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_temporal_cloud_open_metrics_integration_account".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAPI.new
p api_instance.get_temporal_cloud_open_metrics_integration_account("account_id")
