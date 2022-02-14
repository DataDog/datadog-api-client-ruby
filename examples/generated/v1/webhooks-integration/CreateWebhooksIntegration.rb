require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
body = DatadogAPIClient::V1::WebhooksIntegration.new({ name: "WEBHOOK_NAME", url: "https://example.com/webhook" }) # WebhooksIntegration | Create a webhooks integration request body.

begin
  # Create a webhooks integration
  result = api_instance.create_webhooks_integration(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->create_webhooks_integration: #{e}"
end
