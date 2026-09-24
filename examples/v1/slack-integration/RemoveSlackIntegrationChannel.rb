# Remove a Slack integration channel returns "The channel was removed successfully." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new
api_instance.remove_slack_integration_channel("account_name", "channel_name")
