require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
body = DatadogAPIClient::V1::SyntheticsBrowserTest.new({config: DatadogAPIClient::V1::SyntheticsBrowserTestConfig.new({assertions: [DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget.new({operator: DatadogAPIClient::V1::SyntheticsAssertionJSONPathOperator::VALIDATES_JSON_PATH, type: DatadogAPIClient::V1::SyntheticsAssertionType::BODY})], request: DatadogAPIClient::V1::SyntheticsTestRequest.new}), locations: ['locations_example'], name: 'Example test name', options: DatadogAPIClient::V1::SyntheticsTestOptions.new, type: DatadogAPIClient::V1::SyntheticsBrowserTestType::BROWSER}) # SyntheticsBrowserTest | Details of the test to create.

begin
  # Create a browser test
  result = api_instance.create_synthetics_browser_test(body)
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling SyntheticsAPI->create_synthetics_browser_test: #{e}"
end
