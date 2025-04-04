# Get all monitor notification rules returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_monitor_notification_rules".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MonitorsAPI.new
p api_instance.get_monitor_notification_rules()
