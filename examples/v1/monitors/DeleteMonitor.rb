# Delete a monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

# there is a valid "monitor" in the system
MONITOR_ID = ENV["MONITOR_ID"]
p api_instance.delete_monitor(MONITOR_ID.to_i)
