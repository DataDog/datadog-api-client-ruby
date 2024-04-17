# Get notification profile by id returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

# there is a valid "notification_rule" in the system
NOTIFICATION_RULE_DATA_ID = ENV["NOTIFICATION_RULE_DATA_ID"]
p api_instance.get_security_monitoring_notification_rule(NOTIFICATION_RULE_DATA_ID)
