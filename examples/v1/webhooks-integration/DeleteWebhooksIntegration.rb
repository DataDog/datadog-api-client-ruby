# Delete a webhook returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new

# there is a valid "webhook" in the system
WEBHOOK_NAME = ENV["WEBHOOK_NAME"]
p api_instance.delete_webhooks_integration(WEBHOOK_NAME)
