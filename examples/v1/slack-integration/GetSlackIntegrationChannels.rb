# Get all channels in a Slack integration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new
p api_instance.get_slack_integration_channels("account_name")
