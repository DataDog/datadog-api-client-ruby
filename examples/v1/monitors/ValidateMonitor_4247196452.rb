# Validate a multi-alert monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::LOG_ALERT,
  query: 'logs("service:foo AND type:error").index("main").rollup("count").by("source,status").last("5m") > 2',
  message: "some message Notify: @hipchat-channel",
  tags: [
    "test:examplemonitor",
    "env:ci",
  ],
  priority: 3,
  options: DatadogAPIClient::V1::MonitorOptions.new({
    enable_logs_sample: true,
    escalation_message: "the situation has escalated",
    evaluation_delay: 700,
    group_retention_duration: "2d",
    groupby_simple_monitor: false,
    include_tags: true,
    locked: false,
    new_host_delay: 600,
    no_data_timeframe: nil,
    notify_audit: false,
    notify_by: [
      "status",
    ],
    notify_no_data: false,
    on_missing_data: DatadogAPIClient::V1::OnMissingDataOption::SHOW_AND_NOTIFY_NO_DATA,
    renotify_interval: 60,
    require_full_window: true,
    timeout_h: 24,
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 2,
      warning: 1,
    }),
  }),
})
p api_instance.validate_monitor(body)
