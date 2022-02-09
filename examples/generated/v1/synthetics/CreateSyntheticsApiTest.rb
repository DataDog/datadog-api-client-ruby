require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsAPITest.new({ config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new, locations: ["locations_example"], name: "Example test name", options: DatadogAPIClient::V1::SyntheticsTestOptions.new, type: DatadogAPIClient::V1::SyntheticsAPITestType::API }) # SyntheticsAPITest | Details of the test to create.

begin
  # Create an API test
  result = api_instance.create_synthetics_api_test(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_synthetics_api_test: #{e}"
end
