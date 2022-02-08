require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

begin
  # Get all global variables
  result = api_instance.list_global_variables
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_global_variables: #{e}"
end
