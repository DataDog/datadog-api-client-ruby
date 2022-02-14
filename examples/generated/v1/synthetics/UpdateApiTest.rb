require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = "public_id_example" # String | The public ID of the test to get details from.
body = DatadogAPIClient::V1::SyntheticsAPITest.new({ config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new, locations: ["locations_example"], name: "Example test name", options: DatadogAPIClient::V1::SyntheticsTestOptions.new, type: DatadogAPIClient::V1::SyntheticsAPITestType::API }) # SyntheticsAPITest | New test details to be saved.

begin
  # Edit an API test
  result = api_instance.update_api_test(public_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_api_test: #{e}"
end
