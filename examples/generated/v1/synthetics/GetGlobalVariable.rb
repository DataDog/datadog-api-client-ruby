require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
variable_id = "variable_id_example" # String | The ID of the global variable.

begin
  # Get a global variable
  result = api_instance.get_global_variable(variable_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_global_variable: #{e}"
end
