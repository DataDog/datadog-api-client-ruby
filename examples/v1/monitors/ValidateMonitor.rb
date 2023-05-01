# Validate a monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

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
  options: DatadogAPIClient::V1::MonitorOptions.new({
    enable_logs_sample: true,
    escalation_message: "the situation has escalated",
    evaluation_delay: 700,
    groupby_simple_monitor: true,
    include_tags: true,
    locked: false,
    new_host_delay: 600,
    no_data_timeframe: nil,
    notify_audit: false,
    notify_no_data: false,
    on_missing_data: DatadogAPIClient::V1::OnMissingDataOption::SHOW_AND_NOTIFY_NO_DATA,
    notification_preset_name: DatadogAPIClient::V1::MonitorOptionsNotificationPresets::HIDE_HANDLES,
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
