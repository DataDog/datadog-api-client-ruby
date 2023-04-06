# Create a monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

# there is a valid "role" in the system
ROLE_DATA_ID = ENV["ROLE_DATA_ID"]

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::LOG_ALERT,
  query: 'logs("service:foo AND type:error").index("main").rollup("count").by("source").last("5m") > 2',
  message: "some message Notify: @hipchat-channel",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  priority: 3,
  restricted_roles: [
    ROLE_DATA_ID,
  ],
})
p api_instance.create_monitor(body)
