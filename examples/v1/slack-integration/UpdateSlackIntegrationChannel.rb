# Update a Slack integration channel returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new

body = DatadogAPIClient::V1::SlackIntegrationChannel.new({
  display: DatadogAPIClient::V1::SlackIntegrationChannelDisplay.new({
    message: true,
    notified: true,
    snapshot: true,
    tags: true,
  }),
  name: "#general",
})
p api_instance.update_slack_integration_channel("account_name", "channel_name", body)
