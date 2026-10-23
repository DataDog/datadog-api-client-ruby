# List Temporal Cloud OpenMetrics accounts returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.list_temporal_cloud_open_metrics_integration_accounts".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TemporalCloudOpenMetricsIntegrationAPI.new
p api_instance.list_temporal_cloud_open_metrics_integration_accounts()
