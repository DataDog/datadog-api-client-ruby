# Get the list of signal-based notification rules returns "The list of notification rules." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_signal_notification_rules()
