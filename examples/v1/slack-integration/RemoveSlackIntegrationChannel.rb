# Remove a Slack integration channel returns "The channel was removed successfully." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new
api_instance.remove_slack_integration_channel("account_name", "channel_name")
