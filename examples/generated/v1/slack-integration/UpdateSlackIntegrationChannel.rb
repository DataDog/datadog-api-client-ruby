require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new
account_name = "account_name_example" # String | Your Slack account name.
channel_name = "channel_name_example" # String | The name of the Slack channel being operated on.
body = DatadogAPIClient::V1::SlackIntegrationChannel.new # SlackIntegrationChannel | Payload describing fields and values to be updated.

begin
  # Update a Slack integration channel
  result = api_instance.update_slack_integration_channel(account_name, channel_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SlackIntegrationAPI->update_slack_integration_channel: #{e}"
end
