# Edit a monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

# there is a valid "monitor" in the system
MONITOR_ID = ENV["MONITOR_ID"]
MONITOR_NAME = ENV["MONITOR_NAME"]

body = DatadogAPIClient::V1::MonitorUpdateRequest.new({
  name: "My monitor-updated",
  priority: nil,
  options: DatadogAPIClient::V1::MonitorOptions.new({
    evaluation_delay: nil,
    new_group_delay: 600,
    new_host_delay: nil,
    renotify_interval: nil,
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 2,
      warning: nil,
    }),
    timeout_h: nil,
  }),
})
p api_instance.update_monitor(MONITOR_ID.to_i, body)
