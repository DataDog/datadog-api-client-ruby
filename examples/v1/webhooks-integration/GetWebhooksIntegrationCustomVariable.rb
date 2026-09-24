# Get a custom variable returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
p api_instance.get_webhooks_integration_custom_variable("custom_variable_name")
