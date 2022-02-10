require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
custom_variable_name = "custom_variable_name_example" # String | The name of the custom variable.

begin
  # Delete a custom variable
  api_instance.delete_webhooks_integration_custom_variable(custom_variable_name)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->delete_webhooks_integration_custom_variable: #{e}"
end
