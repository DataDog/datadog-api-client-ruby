# Schedule a downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

body = DatadogAPIClient::V1::Downtime.new({
  message: "Example-Schedule_a_downtime_returns_OK_response",
  start: Time.now.to_i,
  timezone: "Etc/UTC",
  scope: [
    "test:examplescheduleadowntimereturnsokresponse",
  ],
  recurrence: DatadogAPIClient::V1::DowntimeRecurrence.new({
    type: "weeks",
    period: 1,
    week_days: [
      "Mon",
      "Tue",
      "Wed",
      "Thu",
      "Fri",
    ],
    until_date: (Time.now + 21 * 86400).to_i,
  }),
})
p api_instance.create_downtime(body)
