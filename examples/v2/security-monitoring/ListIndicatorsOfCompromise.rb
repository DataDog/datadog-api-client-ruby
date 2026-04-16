# List indicators of compromise returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_indicators_of_compromise".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  limit: 1,
}
p api_instance.list_indicators_of_compromise(opts)
