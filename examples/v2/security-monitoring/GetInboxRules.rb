# Get the ordered list of inbox rules returns "The list of inbox rules" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_inbox_rules()
