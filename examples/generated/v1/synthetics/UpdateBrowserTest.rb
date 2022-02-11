require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
public_id = "public_id_example" # String | The public ID of the test to get details from.
body = DatadogAPIClient::V1::SyntheticsBrowserTest.new({ config: DatadogAPIClient::V1::SyntheticsBrowserTestConfig.new({ assertions: [DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget.new({ operator: DatadogAPIClient::V1::SyntheticsAssertionJSONPathOperator::VALIDATES_JSON_PATH, type: DatadogAPIClient::V1::SyntheticsAssertionType::BODY })], request: DatadogAPIClient::V1::SyntheticsTestRequest.new }), locations: ["locations_example"], name: "Example test name", options: DatadogAPIClient::V1::SyntheticsTestOptions.new, type: DatadogAPIClient::V1::SyntheticsBrowserTestType::BROWSER }) # SyntheticsBrowserTest | New test details to be saved.

begin
  # Edit a browser test
  result = api_instance.update_browser_test(public_id, body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->update_browser_test: #{e}"
end
