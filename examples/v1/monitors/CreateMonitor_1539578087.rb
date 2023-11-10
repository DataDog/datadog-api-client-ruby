# Create a metric monitor with a custom schedule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  message: "some message Notify: @hipchat-channel",
  name: "Example-Monitor",
  query: "avg(current_1mo):avg:system.load.5{*} > 0.5",
  tags: [],
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 0.5,
    }),
    notify_audit: false,
    include_tags: false,
    scheduling_options: DatadogAPIClient::V1::MonitorOptionsSchedulingOptions.new({
      evaluation_window: DatadogAPIClient::V1::MonitorOptionsSchedulingOptionsEvaluationWindow.new({
        day_starts: "04:00",
        month_starts: 1,
      }),
      custom_schedule: DatadogAPIClient::V1::MonitorOptionsCustomSchedule.new({
        recurrences: [
          DatadogAPIClient::V1::MonitorOptionsCustomScheduleRecurrence.new({
            rrule: "FREQ=DAILY;INTERVAL=1",
            timezone: "America/Los_Angeles",
            start: "2024-10-26T09:13:00",
          }),
        ],
      }),
    }),
  }),
  type: DatadogAPIClient::V1::MonitorType::QUERY_ALERT,
})
p api_instance.create_monitor(body)
