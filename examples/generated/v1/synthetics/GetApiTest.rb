require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = 'public_id_example' # String | The public ID of the test to get details from.

begin
  # Get an API test
  result = api_instance.get_api_test(public_id)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->get_api_test: #{e}"
end
