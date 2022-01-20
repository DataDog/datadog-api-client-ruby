# Create a webhooks integration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new

body = DatadogAPIClient::V1::WebhooksIntegration.new({
  name: "Test-Example-Create_a_webhooks_integration_returns_OK_response",
  url: "https://example.com/webhook",
})
p api_instance.create_webhooks_integration(body)
