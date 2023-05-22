# Schedule a downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

body = DatadogAPIClient::V1::Downtime.new({
  message: "Example-Downtime",
  start: Time.now.to_i,
  _end: (Time.now + 1 * 3600).to_i,
  timezone: "Etc/UTC",
  scope: [
    "test:exampledowntime",
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
  notify_end_states: [
    DatadogAPIClient::V1::NotifyEndState::ALERT,
    DatadogAPIClient::V1::NotifyEndState::NO_DATA,
    DatadogAPIClient::V1::NotifyEndState::WARN,
  ],
  notify_end_types: [
    DatadogAPIClient::V1::NotifyEndType::CANCELED,
    DatadogAPIClient::V1::NotifyEndType::EXPIRED,
  ],
})
p api_instance.create_downtime(body)
