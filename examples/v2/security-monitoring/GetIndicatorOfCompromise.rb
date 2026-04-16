# Get an indicator of compromise returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_indicator_of_compromise".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_indicator_of_compromise("masscan/1.3 (https://github.com/robertdavidgraham/masscan)")
