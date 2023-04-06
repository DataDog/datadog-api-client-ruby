# Create an Error Tracking monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::ERROR_TRACKING_ALERT,
  query: 'error-tracking-rum("service:foo AND @error.source:source").rollup("count").by("@issue.id").last("1h") >= 1',
  message: "some message",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  priority: 3,
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 1,
    }),
  }),
})
p api_instance.create_monitor(body)
