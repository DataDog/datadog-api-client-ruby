require "datadog_api_client"
api_instance = DatadogAPIClient::V1::WebhooksIntegrationAPI.new
custom_variable_name = "custom_variable_name_example" # String | The name of the custom variable.
body = DatadogAPIClient::V1::WebhooksIntegrationCustomVariableUpdateRequest.new # WebhooksIntegrationCustomVariableUpdateRequest | Update an existing custom variable request body.

begin
  # Update a custom variable
  result = api_instance.update_webhooks_integration_custom_variable(custom_variable_name, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling WebhooksIntegrationAPI->update_webhooks_integration_custom_variable: #{e}"
end
