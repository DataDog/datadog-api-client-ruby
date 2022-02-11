require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new
account_name = 'account_name_example' # String | Your Slack account name.
channel_name = 'channel_name_example' # String | The name of the Slack channel being operated on.

begin
  # Get a Slack integration channel
  result = api_instance.get_slack_integration_channel(account_name, channel_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SlackIntegrationAPI->get_slack_integration_channel: #{e}"
end
