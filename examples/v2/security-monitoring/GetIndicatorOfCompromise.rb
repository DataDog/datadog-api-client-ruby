# Get an indicator of compromise returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_indicator_of_compromise".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  include_triage_history: true,
}
p api_instance.get_indicator_of_compromise("192.0.2.1", opts)
