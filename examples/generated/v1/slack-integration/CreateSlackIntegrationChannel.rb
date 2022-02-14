require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new
account_name = "account_name_example" # String | Your Slack account name.
body = DatadogAPIClient::V1::SlackIntegrationChannel.new # SlackIntegrationChannel | Payload describing Slack channel to be created

begin
  # Create a Slack integration channel
  result = api_instance.create_slack_integration_channel(account_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SlackIntegrationAPI->create_slack_integration_channel: #{e}"
end
