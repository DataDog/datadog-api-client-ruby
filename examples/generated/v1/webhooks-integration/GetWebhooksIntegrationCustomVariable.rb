require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
custom_variable_name = "custom_variable_name_example" # String | The name of the custom variable.

begin
  # Get a custom variable
  result = api_instance.get_webhooks_integration_custom_variable(custom_variable_name)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->get_webhooks_integration_custom_variable: #{e}"
end
