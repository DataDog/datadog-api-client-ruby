# Update a downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

# there is a valid "downtime" in the system
DOWNTIME_ID = ENV["DOWNTIME_ID"]

body = DatadogAPIClient::V1::Downtime.new({
  message: "Example-Downtime-updated",
  mute_first_recovery_notification: true,
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
p api_instance.update_downtime(DOWNTIME_ID.to_i, body)
