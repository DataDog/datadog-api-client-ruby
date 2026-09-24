# Create a custom variable returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new

body = DatadogAPIClient::V1::WebhooksIntegrationCustomVariable.new({
  is_secret: true,
  name: "EXAMPLEWEBHOOKSINTEGRATION",
  value: "CUSTOM_VARIABLE_VALUE",
})
p api_instance.create_webhooks_integration_custom_variable(body)
