require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

begin
  # Get the list of all tests
  result = api_instance.list_tests
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->list_tests: #{e}"
end
