# Get entities related to a signal returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_signal_entities".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_signal_entities("signal_id")
