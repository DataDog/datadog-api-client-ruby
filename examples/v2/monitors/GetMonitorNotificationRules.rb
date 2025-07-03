# Get all monitor notification rules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new
p api_instance.get_monitor_notification_rules()
