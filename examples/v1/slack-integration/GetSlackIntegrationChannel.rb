# Get a Slack integration channel returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SlackIntegrationAPI.new
p api_instance.get_slack_integration_channel("account_name", "channel_name")
