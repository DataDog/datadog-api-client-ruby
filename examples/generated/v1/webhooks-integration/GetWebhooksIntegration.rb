require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
webhook_name = 'webhook_name_example' # String | The name of the webhook.

begin
  # Get a webhook integration
  result = api_instance.get_webhooks_integration(webhook_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->get_webhooks_integration: #{e}"
end
