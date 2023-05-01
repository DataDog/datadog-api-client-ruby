# Schedule a monitor downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

# there is a valid "monitor" in the system
MONITOR_ID = ENV["MONITOR_ID"]

body = DatadogAPIClient::V1::Downtime.new({
  message: "Example-Downtime",
  start: Time.now.to_i,
  timezone: "Etc/UTC",
  scope: [
    "test:exampledowntime",
  ],
  monitor_id: MONITOR_ID.to_i,
})
p api_instance.create_downtime(body)
