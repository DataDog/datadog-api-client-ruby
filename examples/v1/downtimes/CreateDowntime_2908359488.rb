# Schedule a downtime until date

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

body = DatadogAPIClient::V1::Downtime.new({
  message: "Example-Downtime",
  recurrence: DatadogAPIClient::V1::DowntimeRecurrence.new({
    period: 1,
    type: "weeks",
    until_date: (Time.now + 21 * 86400).to_i,
    week_days: [
      "Mon",
      "Tue",
      "Wed",
      "Thu",
      "Fri",
    ],
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
  ],
  notify_end_types: [
    DatadogAPIClient::V1::NotifyEndType::CANCELED,
  ],
})
p api_instance.create_downtime(body)
