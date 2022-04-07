# Create an API test returns "OK - Returns the created test details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    assertions: [
      DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
        operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::LESS_THAN,
        target: 1000,
        type: DatadogAPIClient::V1::SyntheticsAssertionType::RESPONSE_TIME,
      }),
    ],
    request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
      method: DatadogAPIClient::V1::HTTPMethod::GET,
      url: "https://example.com",
    }),
  }),
  locations: [
    "aws:eu-west-3",
  ],
  message: "Notification message",
  name: "Example test name",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    device_ids: [
      DatadogAPIClient::V1::SyntheticsDeviceID::LAPTOP_LARGE,
    ],
    monitor_options: DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions.new({}),
    restricted_roles: [
      "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    ],
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({}),
  }),
  status: DatadogAPIClient::V1::SyntheticsTestPauseStatus::LIVE,
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::HTTP,
  tags: [
    "env:production",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)
