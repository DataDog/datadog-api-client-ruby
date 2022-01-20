# Schedule a downtime until date

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

body = DatadogAPIClient::V1::Downtime.new({
  message: "Test-Example-Schedule_a_downtime_until_date",
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
})
p api_instance.create_downtime(body)
