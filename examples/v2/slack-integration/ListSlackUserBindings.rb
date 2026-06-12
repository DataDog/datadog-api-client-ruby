# List Slack user bindings returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SlackIntegrationAPI.new
p api_instance.list_slack_user_bindings("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
