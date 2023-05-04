# Schedule a downtime once a year

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

body = DatadogAPIClient::V1::Downtime.new({
  message: "Example-Downtime",
  recurrence: DatadogAPIClient::V1::DowntimeRecurrence.new({
    period: 1,
    type: "years",
  }),
  scope: [
    "*",
  ],
  start: Time.now.to_i,
  _end: (Time.now + 1 * 3600).to_i,
  timezone: "Etc/UTC",
  mute_first_recovery_notification: true,
  monitor_tags: [
    "tag0",
  ],
  notify_end_states: [
    DatadogAPIClient::V1::NotifyEndState::ALERT,
    DatadogAPIClient::V1::NotifyEndState::WARN,
  ],
  notify_end_types: [
    DatadogAPIClient::V1::NotifyEndType::EXPIRED,
  ],
})
p api_instance.create_downtime(body)
