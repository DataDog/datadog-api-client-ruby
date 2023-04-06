# Schedule a downtime with until occurrences

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

body = DatadogAPIClient::V1::Downtime.new({
  message: "Example-Downtime",
  recurrence: DatadogAPIClient::V1::DowntimeRecurrence.new({
    period: 1,
    type: "weeks",
    until_occurrences: 3,
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
  monitor_tags: [
    "tag0",
  ],
})
p api_instance.create_downtime(body)
