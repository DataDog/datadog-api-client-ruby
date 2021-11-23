# Get a webhook integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new

# there is a valid "webhook" in the system
WEBHOOK_NAME = ENV["WEBHOOK_NAME"]
p api_instance.get_webhooks_integration(WEBHOOK_NAME)
