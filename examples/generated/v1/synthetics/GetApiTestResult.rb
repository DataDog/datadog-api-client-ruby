require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = "public_id_example" # String | The public ID of the API test to which the target result belongs.
result_id = "result_id_example" # String | The ID of the result to get.

begin
  # Get an API test result
  result = api_instance.get_api_test_result(public_id, result_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test_result: #{e}"
end
