require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
webhook_name = "webhook_name_example" # String | The name of the webhook.

begin
  # Delete a webhook
  api_instance.delete_webhooks_integration(webhook_name)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->delete_webhooks_integration: #{e}"
end
