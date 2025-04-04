# Get a monitor notification rule returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_monitor_notification_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::MonitorsAPI.new

# there is a valid "monitor_notification_rule" in the system
MONITOR_NOTIFICATION_RULE_DATA_ID = ENV["MONITOR_NOTIFICATION_RULE_DATA_ID"]
p api_instance.get_monitor_notification_rule(MONITOR_NOTIFICATION_RULE_DATA_ID)
