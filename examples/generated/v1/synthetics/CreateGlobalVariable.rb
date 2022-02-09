require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsGlobalVariable.new({ description: "Example description", name: "MY_VARIABLE", tags: ["tags_example"], value: DatadogAPIClient::V1::SyntheticsGlobalVariableValue.new }) # SyntheticsGlobalVariable | Details of the global variable to create.

begin
  # Create a global variable
  result = api_instance.create_global_variable(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_global_variable: #{e}"
end
