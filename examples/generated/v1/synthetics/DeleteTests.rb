require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsDeleteTestsPayload.new # SyntheticsDeleteTestsPayload | Public ID list of the Synthetic tests to be deleted.

begin
  # Delete tests
  result = api_instance.delete_tests(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->delete_tests: #{e}"
end
