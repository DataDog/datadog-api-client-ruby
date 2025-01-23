# Get the ordered list of mute rules returns "The list of mute rules" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
p api_instance.get_mute_rules()
