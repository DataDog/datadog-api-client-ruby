require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
webhook_name = "webhook_name_example" # String | The name of the webhook.
body = DatadogAPIClient::V1::WebhooksIntegrationUpdateRequest.new # WebhooksIntegrationUpdateRequest | Update an existing Datadog-Webhooks integration.

begin
  # Update a webhook
  result = api_instance.update_webhooks_integration(webhook_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->update_webhooks_integration: #{e}"
end
