require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new
account_name = "account_name_example" # String | Your Slack account name.

begin
  # Get all channels in a Slack integration
  result = api_instance.get_slack_integration_channels(account_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SlackIntegrationAPI->get_slack_integration_channels: #{e}"
end
