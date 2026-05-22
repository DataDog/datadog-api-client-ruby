# Get sample log generation subscriptions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_sample_log_generation_subscriptions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.list_sample_log_generation_subscriptions()
