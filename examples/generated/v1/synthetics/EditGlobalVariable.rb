require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
variable_id = "variable_id_example" # String | The ID of the global variable.
body = DatadogAPIClient::V1::SyntheticsGlobalVariable.new({ description: "Example description", name: "MY_VARIABLE", tags: ["tags_example"], value: DatadogAPIClient::V1::SyntheticsGlobalVariableValue.new }) # SyntheticsGlobalVariable | Details of the global variable to update.

begin
  # Edit a global variable
  result = api_instance.edit_global_variable(variable_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->edit_global_variable: #{e}"
end
