require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
variable_id = "variable_id_example" # String | The ID of the global variable.

begin
  # Delete a global variable
  api_instance.delete_global_variable(variable_id)
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_global_variable: #{e}"
end
