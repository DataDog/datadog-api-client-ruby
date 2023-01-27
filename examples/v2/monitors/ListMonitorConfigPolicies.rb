# Get all monitor configuration policies returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new
p api_instance.list_monitor_config_policies()
