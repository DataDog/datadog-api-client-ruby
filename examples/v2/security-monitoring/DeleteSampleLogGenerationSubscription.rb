# Unsubscribe from sample log generation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_sample_log_generation_subscription".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.delete_sample_log_generation_subscription("content_pack_id")
