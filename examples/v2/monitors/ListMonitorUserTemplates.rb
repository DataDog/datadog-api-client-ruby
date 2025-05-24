# Get all monitor user templates returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::MonitorsAPI.new
p api_instance.list_monitor_user_templates()
