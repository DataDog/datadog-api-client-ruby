# Delete a custom variable returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new

# there is a valid "webhook_custom_variable" in the system
WEBHOOK_CUSTOM_VARIABLE_NAME = ENV["WEBHOOK_CUSTOM_VARIABLE_NAME"]
p api_instance.delete_webhooks_integration_custom_variable(WEBHOOK_CUSTOM_VARIABLE_NAME)
