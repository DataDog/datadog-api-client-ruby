# Get a monitor's details with downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

# there is a valid "monitor" in the system
MONITOR_ID = ENV["MONITOR_ID"]
opts = {
  with_downtimes: true,
}
p api_instance.get_monitor(MONITOR_ID.to_i, opts)
