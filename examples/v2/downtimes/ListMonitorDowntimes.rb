# Get active downtimes for a monitor returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_monitor_downtimes".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DowntimesAPI.new
p api_instance.list_monitor_downtimes(9223372036854775807)
