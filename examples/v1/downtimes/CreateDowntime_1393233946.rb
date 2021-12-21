# Schedule a downtime with until occurrences

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

body = DatadogAPIClient::V1::Downtime.new({
  message: "Example-Schedule_a_downtime_with_until_occurrences",
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
})
p api_instance.create_downtime(body)
