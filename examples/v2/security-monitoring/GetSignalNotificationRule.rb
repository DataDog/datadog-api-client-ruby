# Get details of a signal-based notification rule returns "Notification rule details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "valid_signal_notification_rule" in the system
VALID_SIGNAL_NOTIFICATION_RULE_DATA_ID = ENV["VALID_SIGNAL_NOTIFICATION_RULE_DATA_ID"]
p api_instance.get_signal_notification_rule(VALID_SIGNAL_NOTIFICATION_RULE_DATA_ID)
