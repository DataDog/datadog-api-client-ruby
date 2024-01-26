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
      method: "GET",
      url: "https://example.com",
    }),
  }),
  locations: [
    "aws:eu-west-3",
  ],
  message: "Notification message",
  name: "Example test name",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    ci: DatadogAPIClient::V1::SyntheticsTestCiOptions.new({
      execution_rule: DatadogAPIClient::V1::SyntheticsTestExecutionRule::BLOCKING,
    }),
    device_ids: [
      DatadogAPIClient::V1::SyntheticsDeviceID::CHROME_LAPTOP_LARGE,
    ],
    http_version: DatadogAPIClient::V1::SyntheticsTestOptionsHTTPVersion::HTTP1,
    monitor_options: DatadogAPIClient::V1::SyntheticsTestOptionsMonitorOptions.new({}),
    restricted_roles: [
      "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    ],
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({}),
    rum_settings: DatadogAPIClient::V1::SyntheticsBrowserTestRumSettings.new({
      application_id: "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
      client_token_id: 12345,
      is_enabled: true,
    }),
    scheduling: DatadogAPIClient::V1::SyntheticsTestOptionsScheduling.new({
      timeframes: [
        DatadogAPIClient::V1::SyntheticsTestOptionsSchedulingTimeframe.new({
          day: 1,
          from: "07:00",
          to: "16:00",
        }),
        DatadogAPIClient::V1::SyntheticsTestOptionsSchedulingTimeframe.new({
          day: 3,
          from: "07:00",
          to: "16:00",
        }),
      ],
      timezone: "America/New_York",
    }),
  }),
  status: DatadogAPIClient::V1::SyntheticsTestPauseStatus::LIVE,
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::HTTP,
  tags: [
    "env:production",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)
