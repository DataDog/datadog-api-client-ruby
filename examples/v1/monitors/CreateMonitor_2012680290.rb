# Create a metric monitor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::MonitorsAPI.new

body = DatadogAPIClient::V1::Monitor.new({
  name: "Example-Monitor",
  type: DatadogAPIClient::V1::MonitorType::METRIC_ALERT,
  query: "avg(current_1mo):avg:system.load.5{*} > 0.5",
  message: "some message Notify: @hipchat-channel",
  options: DatadogAPIClient::V1::MonitorOptions.new({
    thresholds: DatadogAPIClient::V1::MonitorThresholds.new({
      critical: 0.5,
    }),
    scheduling_options: DatadogAPIClient::V1::MonitorOptionsSchedulingOptions.new({
      evaluation_window: DatadogAPIClient::V1::MonitorOptionsSchedulingOptionsEvaluationWindow.new({
        day_starts: "04:00",
        month_starts: 1,
      }),
    }),
  }),
})
p api_instance.create_monitor(body)
