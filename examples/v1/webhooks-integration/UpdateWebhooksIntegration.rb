# Update a webhook returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new

# there is a valid "webhook" in the system
WEBHOOK_NAME = ENV["WEBHOOK_NAME"]

body = DatadogAPIClient::V1::WebhooksIntegrationUpdateRequest.new({
  url: "https://example.com/webhook-updated",
})
p api_instance.update_webhooks_integration(WEBHOOK_NAME, body)
