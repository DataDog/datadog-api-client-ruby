require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
body = DatadogAPIClient::V1::WebhooksIntegrationCustomVariable.new({is_secret: true, name: 'CUSTOM_VARIABLE_NAME', value: 'CUSTOM_VARIABLE_VALUE'}) # WebhooksIntegrationCustomVariable | Define a custom variable request body.

begin
  # Create a custom variable
  result = api_instance.create_webhooks_integration_custom_variable(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->create_webhooks_integration_custom_variable: #{e}"
end
