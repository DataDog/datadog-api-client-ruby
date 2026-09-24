# Create a webhooks integration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new

body = DatadogAPIClient::V1::WebhooksIntegration.new({
  name: "Example-Webhooks-Integration",
  url: "https://example.com/webhook",
})
p api_instance.create_webhooks_integration(body)
